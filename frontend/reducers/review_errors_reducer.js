import { RECEIVE_REVIEW_ERRORS} from '../actions/review_actions';
import { RECEIVE_SHOW } from '../actions/shows_actions';

const ReviewErrorsReducer = (state = [], action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_REVIEW_ERRORS:
      return action.errors;
    case RECEIVE_SHOW:
      return [];
    default:
      return state;
  }
};

export default ReviewErrorsReducer;
