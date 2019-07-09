import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';
import { DateRangePicker, SingleDatePicker, DayPickerRangeController } from 'react-dates';
import isBeforeDay from 'react-dates/lib/utils/isBeforeDay';
import isSameDay from 'react-dates/lib/utils/isSameDay';
import isAfterDay from 'react-dates/lib/utils/isAfterDay';
import moment from 'moment';
import renderGuestOptions from './render_guest_options';
import SpotDetails from './spot_details';
import SpotPhotos from './spot_photos';

class SpotShow extends React.Component {

    constructor(props) {
        super(props);
        this.renderFeatures = this.renderFeatures.bind(this);
        this.calculateFees = this.calculateFees.bind(this);
        this.updateGuests = this.updateGuests.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.isDayBlocked = this.isDayBlocked.bind(this);
        this.bookedDates = this.bookedDates.bind(this);
        this.conflict = this.conflict.bind(this);

        this.state = {
            guests: props.minGuest,
            startDate: null,
            endDate: null,
        };

        this.blockedDates = []
    }
    calculateFees(spot) {
        let price = spot.price
        let fees = this.state.guests * 5.64;
        let taxes = (price + fees) * .08;
        let subtotal = price + fees + taxes;
        this.setState({
            price: price,
            fees: fees.toFixed(2),
            taxes: taxes.toFixed(2),
            subtotal: subtotal.toFixed(2)
        }); 
    }
 
    bookedDates() {
        this.props.fetchSpotBookings(this.props.match.params.id);
    }

    // Ensure theat incoming # of guest selected does not exceed spot's maximum guests.
    // if it does, set the selected # of guests to be the spot's maximum.
    updateDefaultGuests(spot) {
        if (spot.guests < this.state.guests) {
            this.setState( {
                guests: spot.guests
            });
        }
    }

    componentDidMount() {
        this.bookedDates();
        if (this.props.spot === undefined || this.props.spot.photo_urls === undefined) {
            if(this.props.spot){
                this.calculateFees(this.props.spot);
                this.bookedDates();
            }
            this.props.findASpot(this.props.match.params.id);
        } if(this.props.spot) {
            this.calculateFees(this.props.spot);
            this.bookedDates();
        }
    }

    componentDidUpdate(prevProps, prevState) {
        if(this.props.match.params.id !== prevProps.match.params.id) {
            this.props.findASpot(this.props.match.params.id)
            .then( spot => {
                this.calculateFees(spot);
                this.updateDefaultGuests(spot);
                this.bookedDates();
            })
        } if(this.state.price === undefined && this.props.spot) {
            this.calculateFees(this.props.spot)
        } if(prevState.guests !== this.state.guests) {
            this.calculateFees(this.props.spot)
        } if (prevProps.bookingDates !== this.props.bookingDates) {
            var bookingDates = Object.values(this.props.bookingDates);
            if (bookingDates && bookingDates.length > 0) {
                let tempdates = new Array;
                bookingDates.forEach(date => {
                    tempdates.push([date.start, date.end]);
                });
                this.setState({
                    dates: tempdates
                });
            }   
        }
    }


    updateGuests(e) {
        e.preventDefault();
        this.setState({
            guests: parseInt(e.currentTarget.value)
        })
    }
    

    renderFeatures() {
        return (
            Object.values(this.props.spot.features).map(feature => (
                    <li key={feature}>{feature}</li>     
            ))
        )
    }
    
    conflict(startDate, endDate) {
        if(this.state.dates) {
            for(let i = 0; i < this.state.dates.length; i ++) {
                let date = this.state.dates[0];
                if (startDate <= new Date(date[0])
                    && endDate >= new Date(date[1])) {
                    console.log("CONFLICT!!!!");
                    return true;
                }
            }
        } return false;
    }

    handleSubmit(e) {
        e.preventDefault();
        if(!this.props.currentUser) { // Prompt User to Login/Signup with modal if booking without a currentUser
            this.props.openModal('login');
        } else if(this.state.startDate && this.state.endDate) {
            if (this.conflict(this.state.startDate._d, this.state.endDate._d)) {
                alert("Can't book around already booked day's. Please try new dates and avoid those that are greyed out.");
            } else {
                let data = {
                    guest_id: this.props.currentUser.id,
                    spot_id: parseInt(this.props.match.params.id),
                    start: this.state.startDate._d,
                    end: this.state.endDate._d,
                    num_guest: this.state.guests
                }
                this.props.createABooking(data);
                this.props.openModal('confirm',data);
            }
        }
    }

    isDayBlocked(day) {
        let ctx = this;
        if(ctx !== undefined && ctx.blockedDates){
            if(ctx.blockedDates.indexOf(day._d) > -1) {
                return true
            }
        } if (ctx.state.dates === undefined ||
            ctx.state.dates.length === 0) {
                return false;
        } else {
            ctx.state.dates.forEach(date => {
                if (day._d >= new Date(date[0]) && day._d <= new Date(date[1])) {
                    if (ctx.blockedDates.indexOf(day._d) === -1) {
                        ctx.blockedDates = ctx.blockedDates.concat(day._d);
                        return true;
                    }
                } 
            });
        }
        return false;
    }


    render() {
        if (this.props.spot !== undefined 
            && this.props.spot.photo_urls !== undefined
            && this.state.price !== undefined) {
            return(
                <div className="spot-container">
                    <header className="top-nav">
                        <Link to="/" className="header-link">
                            <div className="icon-color"></div>
                        </Link>
                        <DarkWelcomeContainer />
                    </header>
                    <SpotPhotos spot={this.props.spot} openModal={this.props.openModal} ctx={this}/>
                    <div className="spot-details-box">
                        <SpotDetails spot={this.props.spot}/>
                        <div className="right-box">
                            <form>
                                <div className="book-form">
                                    <div className="form-row">
                                        <h1>${this.state.price}</h1><p>per night</p> 
                                    </div>
                                    <div className="form-row">
                                        <label className="when">
                                            <DateRangePicker
                                                startDate={this.state.startDate} // momentPropTypes.momentObj or null,
                                                startDateId="your_unique_start_date_id" // PropTypes.string.isRequired,
                                                endDate={this.state.endDate} // momentPropTypes.momentObj or null,
                                                endDateId="your_unique_end_date_id" // PropTypes.string.isRequired,
                                                onDatesChange={({ startDate, endDate }) => this.setState({ startDate, endDate })} // PropTypes.func.isRequired,
                                                focusedInput={this.state.focusedInput} // PropTypes.oneOf([START_DATE, END_DATE]) or null,
                                                onFocusChange={focusedInput => this.setState({ focusedInput })} // PropTypes.func.isRequired,
                                                isDayBlocked={(day) => this.isDayBlocked(day)}
                                                enableOutsideDays={false}
                                            />
                                        </label>
                                    </div>
                                    <div className="form-row">
                                            <select name="guests"
                                                className="option-dropdown"
                                                onChange={(e) => this.updateGuests(e)}>
                                                {renderGuestOptions(this)}      
                                            </select>
                                    </div>

                                    <div className="form-row">
                                        <div className="left-form">
                                            <h3 className="subtotal">${this.state.fees} cleaning fee</h3> 
                                            <h3 className="subtotal">${this.state.taxes} taxes and fees</h3> 
                                            <hr></hr>
                                            <h3 className="subtotal">${ this.state.subtotal }</h3>
                                        </div>                                                
                                        <div className="right-form">
                                            <input className="search-submit"
                                                type="submit"
                                                value="Request To Book"
                                                onClick={ (e) => this.handleSubmit(e)}
                                            />                                  
                                        </div> 
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            )   
        } else return (
                <div className="content-container">
                    <header className="top-nav">
                        <Link to="/spots" className="header-link">
                            <div className="icon-color"></div>
                        </Link>
                        <DarkWelcomeContainer />
                    </header>
                    <h1> Loading... </h1>
                </div>
        )
    }
}

export default withRouter(SpotShow);
