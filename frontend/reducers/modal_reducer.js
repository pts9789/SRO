import { HIDE_MODAL, SHOW_MODAL} from '../actions/modal_actions';


const ModalReducer = (state = null, action) => {
  Object.freeze(state);

  switch (action.type) {
    case SHOW_MODAL:
      return action.modal;
    case HIDE_MODAL:
      return null;
    default:
      return state;
  }
};

export default ModalReducer;
