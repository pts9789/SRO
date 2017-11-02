import { RECEIVE_ALL_SHOWS, RECEIVE_SHOW } from '../actions/shows_actions';
import { RECEIVE_SHOWS_TO_SEE, REMOVE_SHOWS_TO_SEE } from '../actions/s2s_actions';
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

    default:
      return state;

  }

};

export default showsReducer;
