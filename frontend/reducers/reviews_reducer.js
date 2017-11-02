import { RECEIVE_SHOW } from '../actions/shows_actions';
import { RECEIVE_REVIEW, REMOVE_REVIEW } from '../actions/shows_actions';
import merge from 'lodash/merge';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  let reviews;
  switch (action.type) {

    case RECEIVE_SHOW:
      return merge({}, state, action.payload.reviews);

    case RECEIVE_REVIEW:
      return merge({}, state, {[action.review.id]: action.review});

    case REMOVE_REVIEW:
      let newState = merge({}, state);
      delete newState[action.postId];
      return newState;

    default:
      return state;

  }

};

export default reviewsReducer;
