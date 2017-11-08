import { RECEIVE_SESSION_ERRORS, RECEIVE_CURRENT_USER} from '../actions/session_actions';
import { HIDE_MODAL, SHOW_MODAL } from '../actions/modal_actions';

const SessionErrorsReducer = (state = [], action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_SESSION_ERRORS:
      return action.errors;
    case HIDE_MODAL:
      return [];
    case SHOW_MODAL:
      return [];
    case RECEIVE_CURRENT_USER:
      return [];
    default:
      return state;
  }
};

export default SessionErrorsReducer;
