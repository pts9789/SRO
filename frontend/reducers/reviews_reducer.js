import { RECEIVE_ALL_SHOWS, RECEIVE_SHOW } from '../actions/shows_actions';
import merge from 'lodash/merge';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  let reviews;
  switch (action.type) {

    case RECEIVE_ALL_SHOWS:
      reviews = {};
      action.payload.reviews.forEach((review) =>(
        reviews[review.id] = review
      ));
      return merge({}, state, reviews);

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
