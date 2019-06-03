import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';
import { DateRangePicker, SingleDatePicker, DayPickerRangeController } from 'react-dates';

class SplashSearch extends React.Component {
    constructor(props) {
        super(props);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.state={
            loc: 'Anywhere',
            guests: 1,
        };
        this.update = this.update.bind(this);
        this.findLatAndLong = this.findLatAndLong.bind(this);
        this.updateGuests = this.updateGuests.bind(this);
    }


    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        if(this.state.loc === 'Anywhere') {
            this.props.history.push('/locations')
        } else {
            let latlng = this.findLatAndLong(this.state.loc);
            this.props.history.push({
                pathname: '/search',
                state: {
                    minguest: this.state.guests,
                    loc: this.state.loc,
                    lat: latlng[0],
                    long: latlng[1]
                }
            })
        }
    }

    updateGuests(e) {
        this.props.updateFilter('minGuest', parseInt(e.currentTarget.value))
    }


    findLatAndLong(this_location) {
        let locations = Object.values(this.props.locations);
        let idx = -1;
        for (var i = 0; i < locations.length; i++) {
            if (locations[i].name === this_location) {
                idx = i;
            }
        } if (idx !== -1) {
            return ([locations[idx].lat, locations[idx].long])
        } else {
            return ([0.0, 0.0])
        }
    }

    renderOptions() {
        return(
            Object.values(this.props.locations).map( location => {
                if (location.name === this.state.loc) {
                    return(
                        <option value={location.name} selected>{location.name}</option>
                    )
                } else {
                    return(
                        <option value={location.name}>{location.name}</option>
                    )
                }
            })
        )
    }

    render() {
        return (
            <div className="splash-search-container">
                <form className="search-form-box" onSubmit={this.handleSubmit}>
                    <h1>Book unique homes and experiences.</h1>
                    <div className="search-form">
                        <div className="top-options splash">
                            <label className="where">Where:                               
                                <select name="loc"
                                    onChange={this.update('loc')}
                                    className="option-dropdown">
                                    <option selected disabled >Anywhere</option>
                                    {this.renderOptions()}
                                </select>
                            </label>
                            <label className="guests">Guests:
                                <input
                                    type="number"
                                    min='1'
                                    className="option-dropdown"
                                    value={this.props.minGuest}
                                    onChange={ (e) => this.updateGuests(e)}
                                />
                            </label>
                        </div>
                        
                        <label className="when"> 
                            <DateRangePicker
                                        startDate={this.state.startDate} // momentPropTypes.momentObj or null,
                                        startDateId="your_unique_start_date_id" // PropTypes.string.isRequired,
                                        endDate={this.state.endDate} // momentPropTypes.momentObj or null,
                                        endDateId="your_unique_end_date_id" // PropTypes.string.isRequired,
                                        onDatesChange={({ startDate, endDate }) => this.setState({ startDate, endDate })} // PropTypes.func.isRequired,
                                        focusedInput={this.state.focusedInput} // PropTypes.oneOf([START_DATE, END_DATE]) or null,
                                        onFocusChange={focusedInput => this.setState({ focusedInput })} // PropTypes.func.isRequired,
                                    />
                        </label>

                        <input className="search-submit"
                            type="submit"
                            value="Search"
                        />
                    </div>
                </form>
            </div>
        );
    }
}

export default SplashSearch;


