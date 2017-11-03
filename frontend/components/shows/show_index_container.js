import { connect } from 'react-redux';

import ShowIndex from './show_index';
import { fetchAllShows } from '../../actions/shows_actions';

const mapStateToProps = (state) => {
  return({
    plays: Object.values(state.entities.shows).filter((show) => {
      return show.type === "Play" && show.status === "Now Playing";
    }),
    musicals: Object.values(state.entities.shows).filter((show) => {
      return show.type === "Musical" && show.status === "Now Playing";
    }),
    comingSoon: Object.values(state.entities.shows).filter((show) => {
      return show.status === "Coming Soon";
    }),
  });
};

const mapDispatchToProps = (dispatch) => {
  return({
    fetchAllShows: () => dispatch(fetchAllShows()),
  });
};

export default connect(mapStateToProps, mapDispatchToProps)(ShowIndex);
