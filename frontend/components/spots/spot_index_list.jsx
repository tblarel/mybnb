import React from 'react';
import { withRouter } from 'react-router-dom';
import SpotIndexItem from './spot_index_item';
import { filter } from 'lodash';

    class SpotIndexList extends React.Component  {
        
        constructor(props) {
            super(props);
        }

        render() {
            return(
                <>
                    {this.props.spots.map(spot => (
                        <SpotIndexItem
                            spot={spot}
                            key={spot.id}
                        />
                    ))}
                </>
            );
        };
        
    }

    export default SpotIndexList;



