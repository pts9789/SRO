import { RECEIVE_CURRENT_USER } from "../actions/session_actions";


const _nullUser = {
  currentUser: null,
};

const SessionReducer = (state = _nullUser, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return Object.assign({}, state, { currentUser });

    default:
      return state;
  }
};

export default SessionReducer;
