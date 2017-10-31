import { RECEIVE_SHOW } from '../actions/shows_actions';
import merge from 'lodash/merge';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {

    case RECEIVE_SHOW:
      const reviews = {};
      action.payload.reviews.forEach((review) =>(
        reviews[review.id] = review
      ));
      return merge({}, state, reviews);
    default:
      return state;

  }

};

export default reviewsReducer;
