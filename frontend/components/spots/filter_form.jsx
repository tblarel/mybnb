import React from 'react';
import { DateRangePicker, SingleDatePicker, DayPickerRangeController } from 'react-dates';

const handleChange = (filter, updateFilter) => e => (
    updateFilter(filter, parseInt(e.currentTarget.value))
);

const FilterForm = ({ minGuest, maxGuest, minPrice, maxPrice, updateFilter }) => (
    <div className="filter-row">
        <div>
            <label>Guests</label>
                    <input
                        type="number"
                        min='1'
                        className="option-dropdown"
                        value={minGuest}
                        onChange={handleChange('minGuest', updateFilter)}
                    />
        </div>
        <div>
            <label>Minimum Price</label>
                    <input
                        type="number"
                        min='1'
                        className="option-dropdown"
                        value={minPrice}
                        onChange={handleChange('minPrice', updateFilter)}
                    />
        </div>
        <div>
            <label>Maximum Price</label>
                    <input
                        type="number"
                        className="option-dropdown"
                        value={maxPrice}
                        onChange={handleChange('maxPrice', updateFilter)}
                    />
        </div>
        <div>
            {/* <label className="when">
                
            </label> */}
        </div>
    </div>
);

export default FilterForm;
