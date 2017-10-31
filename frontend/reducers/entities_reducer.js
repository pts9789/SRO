import { combineReducers } from 'redux';

import shows from './shows_reducer';
import reviews from './reviews_reducer';
export default combineReducers({
  shows,
  reviews,
});
