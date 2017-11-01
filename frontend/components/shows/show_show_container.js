import { connect } from 'react-redux';
import ShowShow from './show_show';
import { fetchShow } from '../../actions/shows_actions';

const mapStateToProps = (state, ownProps) => {

  return({
    show: state.entities.shows[ownProps.match.params.showId],
    critic_reviews: Object.values(state.entities.reviews).filter((review) => {
      return review.type === "CriticReview";
    }),
    user_reviews: Object.values(state.entities.reviews).filter((review) => {
      return review.type === "UserReview";
    }),
    
  });
};

const mapDispatchToProps = (dispatch) => {
  return({
    fetchShow: (id) => dispatch(fetchShow(id))
  });
};

export default connect(mapStateToProps, mapDispatchToProps)(ShowShow);
