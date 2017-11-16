import { connect } from 'react-redux';
import ShowShow from './show_show';
import { fetchShow } from '../../actions/shows_actions';
import { deleteReview } from '../../actions/review_actions';
import {withRouter} from 'react-router-dom';

const mapStateToProps = (state, ownProps) => {
  const show = state.entities.shows[ownProps.match.params.showId] || {};
  let criticReviews = [];
  let userReviews = [];
  let currentUserID = 0;
  if (show.hasOwnProperty("critic_review_ids")) {
    criticReviews = show.critic_review_ids.map(id => {
      return state.entities.reviews[id];
    });
    userReviews = show.user_review_ids.map(id => {
      return state.entities.reviews[id];
    });
  }

  if (state.session.currentUser) {
    currentUserID = state.session.currentUser.id;
  }
  return({
    show,
    criticReviews,
    userReviews,
    currentUserID,
  });
};

const mapDispatchToProps = (dispatch) => {
  return({
    fetchShow: (id) => dispatch(fetchShow(id)),
    deleteReview: (id) => dispatch(deleteReview(id)),
  });
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ShowShow));
