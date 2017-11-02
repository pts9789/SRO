import { connect } from 'react-redux';
import { createReview } from '../../actions/review_actions';
import ShowReviewForm from './show_review_form';
// DON'T FORGET TO WRITE YOUR REVIEW REDUCER ACTIONS AND EVERYTHING!!!

const mapDispatchToProps = dispatch => ({
  createReview: (review) => dispatch(createReview(review)),
});

export default connect(null, mapDispatchToProps)(ShowReviewForm);
