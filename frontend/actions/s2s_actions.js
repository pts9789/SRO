import * as ApiUtil from "../util/s2s_api_util";

export const RECEIVE_SHOWS_TO_SEE = 'RECEIVE_SHOWS_TO_SEE';
export const REMOVE_SHOWS_TO_SEE = 'REMOVE_SHOWS_TO_SEE';

export const receiveShowsToSee = (showsToSee) => ({
  type: RECEIVE_SHOWS_TO_SEE,
  showsToSee,
});

export const removeReview = (showsToSee) => ({
  type: REMOVE_REVIEW,
  showsToSee,
});

export const createShowsToSee = (showsToSee) => (dispatch) => {
  return ApiUtil.createShowsToSee(showsToSee).then((showsToSee) => {
    return dispatch(receiveShowsToSee(showsToSee));
  });
};

export const deleteShowsToSee = (showsToSee) => (dispatch) => {
  return ApiUtil.deleteShowsToSee(showsToSee).then((showsToSee) => {
    return dispatch(removeShowsToSee(showsToSee));
  });
};
