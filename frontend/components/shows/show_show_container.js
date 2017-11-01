import { connect } from 'react-redux';
import ShowShow from './show_show';
import { fetchShow } from '../../actions/shows_actions';

const mapStateToProps = (state, ownProps) => {
  const show = state.entities.shows[ownProps.match.params.showId];
  let criticReviews = [];
  let userReviews = [];
  if (show.hasOwnProperty("critic_review_ids")) {
    criticReviews = show.critic_review_ids.map(id => {
      return state.entities.reviews[id];
    });
    userReviews = show.user_review_ids.map(id => {
      return state.entities.reviews[id];
    });
  }

  return({
    show,
    criticReviews,
    userReviews,
  });
};

const mapDispatchToProps = (dispatch) => {
  return({
    fetchShow: (id) => dispatch(fetchShow(id))
  });
};

export default connect(mapStateToProps, mapDispatchToProps)(ShowShow);
