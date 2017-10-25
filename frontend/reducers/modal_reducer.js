import { HIDE_MODAL, SHOW_MODAL} from '../actions/modal_actions';

const defaultState = {
  component: null,
};

const ModalReducer = (state = defaultState, action) => {
  Object.freeze(state);

  switch (action.type) {
    case SHOW_MODAL:
      return {component: action.component};
    case HIDE_MODAL:
      return defaultState;
    default:
      return state;
  }
};

export default ModalReducer;
