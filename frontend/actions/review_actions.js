import * as ApiUtil from "../util/reviews_api_util";

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';

export const receiveReview = (review) => ({
  type: RECEIVE_REVIEW,
  review,
});

export const removeReview = (review) => ({
  type: REMOVE_REVIEW,
  reviewId: review.id
});

export const receiveReviewErrors = (errors) => ({
  type: RECEIVE_REVIEW_ERRORS,
  errors
});

export const createReview = (review) => (dispatch) => {
  return ApiUtil.createReview(review).then((review) => {
    return dispatch(receiveReview(review));
  }, (err) => {
    return(
    dispatch(receiveReviewErrors(err.responseJSON))
  );});
};

export const updateReview = (review) => (dispatch) => {
  return ApiUtil.updateReview(review).then((review) => {
    return dispatch(receiveReview(review));
  }, (err) => (
    dispatch(receiveReviewErrors(err.responseJSON))
  ));
};

export const deleteReview = (reviewId) => (dispatch) => {
  return ApiUtil.deleteReview(reviewId).then((review) => {
    return dispatch(removeReview(review));
  });
};
