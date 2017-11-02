import * as ApiUtil from "../util/s2s_api_util";

export const RECEIVE_SHOWS_TO_SEE = 'RECEIVE_SHOWS_TO_SEE';
export const REMOVE_SHOWS_TO_SEE = 'REMOVE_SHOWS_TO_SEE';

export const receiveShowsToSee = (payload) => ({
  type: RECEIVE_SHOWS_TO_SEE,
  payload,
});

export const removeReview = (payload) => ({
  type: REMOVE_REVIEW,
  payload,
});

export const createShowsToSee = (showsToSee) => (dispatch) => {
  return ApiUtil.createShowsToSee(showsToSee).then(() => {
    return dispatch(receiveShowsToSee(showsToSee.show_id));
  });
};

export const deleteShowsToSee = (showsToSee) => (dispatch) => {
  return ApiUtil.deleteShowsToSee(showsToSee).then((showsToSee) => {
    return dispatch(removeShowsToSee(showsToSee));
  });
};
