import { RECEIVE_ALL_SHOWS, RECEIVE_SHOW } from '../actions/shows_actions';
import merge from 'lodash/merge';

const showsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ALL_SHOWS:
      return merge({}, state, action.shows);
    case RECEIVE_SHOW:
      const show = action.payload;
      return merge({}, state, {[show.id]: show});
    default:
      return state;

  }

};

export default showsReducer;
