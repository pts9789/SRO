import { RECEIVE_ALL_SHOWS, RECEIVE_SHOW } from '../actions/shows_actions';
import merge from 'lodash/merge';

const showsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ALL_SHOWS:
      return merge({}, state, action.shows);

    default:
      return state;

  }

};

export default showsReducer;
