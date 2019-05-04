import React from 'react';
import { withRouter } from 'react-router-dom';
import SpotIndexItem from './/spot_index_item';

class SpotIndexList extends React.Component {

    constructor(props) {
        super(props);

    }

    render() {
        return (
            Object.values(this.props.currentList).map(spot => (
                <SpotIndexItem
                    spot={spot}
                    key={spot.id}
                />
            ))
        )
    }
}   

export default withRouter(SpotIndexList);
