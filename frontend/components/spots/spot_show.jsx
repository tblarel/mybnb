import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';
import { DateRangePicker, SingleDatePicker, DayPickerRangeController } from 'react-dates';
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
        this.state = {
            guests: props.minGuest,
            startDate: null,
            endDate: null
        };
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
        if (this.props.spot === undefined || this.props.spot.photo_urls === undefined) {
            if(this.props.spot){
                this.calculateFees(this.props.spot);
            }
            this.props.findASpot(this.props.match.params.id);
        } if( this.props.spot) {
            this.calculateFees(this.props.spot)
        }
    }

    componentDidUpdate(prevProps, prevState) {
        if(this.props.match.params.id !== prevProps.match.params.id) {
            this.props.findASpot(this.props.match.params.id)
            .then( spot => {
                this.calculateFees(spot);
                this.updateDefaultGuests(spot);
            })
        } if(this.state.price === undefined && this.props.spot) {
            this.calculateFees(this.props.spot)
        } if(prevState.guests !== this.state.guests) {
            this.calculateFees(this.props.spot)
        } if(prevState.startDate !== this.state.startDate || 
             prevState.endDate !== this.state.endDate) {
            //debugger
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

    handleSubmit(e) {
        if(this.state.startDate && this.state.endDate) {
            debugger
            console.log(`Booking from ${this.state.startDate} 
                        to ${this.state.endDate} for $${this.state.guests} guest(s)`)
        }
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
                    <SpotPhotos spot={this.props.spot} />
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
