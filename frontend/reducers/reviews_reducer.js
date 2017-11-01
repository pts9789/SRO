import { RECEIVE_SHOW } from '../actions/shows_actions';
import merge from 'lodash/merge';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  let reviews;
  switch (action.type) {

    case RECEIVE_SHOW:
      reviews = {};
      action.payload.reviews.forEach((review) =>(
        reviews[review.id] = review
      ));
      return merge({}, state, reviews);
    default:
      return state;

  }

};

export default reviewsReducer;
