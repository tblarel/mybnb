import React from 'react';

export default function renderGuestOptions(ctx) {
    let options = []
    for (let i = 1; i <= ctx.props.spot.num_guest; i++) {
        if (i === ctx.state.guests) {
            if (i == 1) {
                options.push(<option key={i} value={ctx.state.guests} selected>{ctx.state.guests} guest</option>)
            } else {
                options.push(<option key={i} value={ctx.state.guests} selected>{ctx.state.guests} guests</option>)
            }
        } else {
            if (i === 1) {
                options.push(<option key={i} value={i}>{i} guest</option>);

            } else {
                options.push(<option key={i} value={i}>{i} guests</option>);
            }
        }
    }
    return options;
}