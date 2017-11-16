import { RECEIVE_ALL_SHOWS, RECEIVE_SHOW } from '../actions/shows_actions';
import { RECEIVE_SHOWS_TO_SEE, REMOVE_SHOWS_TO_SEE } from '../actions/s2s_actions';
import { REMOVE_REVIEW } from '../actions/review_actions';
import merge from 'lodash/merge';

const showsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ALL_SHOWS:
      const shows = action.payload.shows;
      return merge({}, state, action.payload.shows);

    case RECEIVE_SHOW:
      const show = action.payload.show;
      return merge({}, state, {[show.id]: show});

    case REMOVE_REVIEW:
      let newState = merge({}, state);
      newState[action.review.show_id].user_review_ids = newState[action.review.show_id]
        .user_review_ids.filter(id => id != action.review.id);
      return newState;
    default:
      return state;

  }

};

export default showsReducer;
