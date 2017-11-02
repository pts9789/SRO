import { connect } from 'react-redux';
import { createReview } from '../../actions/review_actions';
import { hideModal, showModal } from '../../actions/modal_actions';
import ShowReviewForm from './show_review_form';
// DON'T FORGET TO WRITE YOUR REVIEW REDUCER ACTIONS AND EVERYTHING!!!

const mapStateToProps = (state) => {
  return({
    loggedIn: Boolean(state.session.currentUser),
    errors: state.errors.review
  });
};

const mapDispatchToProps = (dispatch) => {
  return({
    createReview: (review) => dispatch(createReview(review)),
    launchLogin: () => dispatch(showModal("login"))
  });
};

export default connect(mapStateToProps, mapDispatchToProps)(ShowReviewForm);
