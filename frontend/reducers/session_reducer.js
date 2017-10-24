import { RECEIVE_CURRENT_USER } from "../actions/session_actions";


const defaultState = {
  currentuser: null,
  errors: [],
};

const SessionReducer = (state = defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      const currentuser = action.currentuser;
      return Object.assign({}, state, { currentuser });

    default:
      return state;
  }
};

export default SessionReducer;
