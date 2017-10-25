import * as ApiUtil from "../util/session_api_util";

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';

export const receiveCurrentUser = (currentuser) => ({
  type: RECEIVE_CURRENT_USER,
  currentuser
});

export const receiveSessionErrors = (errors) => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
});

export const login = (user) => (dispatch) => {
  return ApiUtil.login(user).then((user) => {
    return dispatch(receiveCurrentUser(user));
  }, (err) => (
    dispatch(receiveSessionErrors(err.responseJSON))
  ));
};

export const signup = (user) => (dispatch) => {
  return ApiUtil.signup(user).then((user) => {
    return dispatch(receiveCurrentUser(user));
  }, (err) => (
    dispatch(receiveSessioonErrors(err.responseJSON))
  ));
};

export const logout = () => (dispatch) => {
  return ApiUtil.logout().then((user) => {
    return dispatch(receiveCurrentUser(user));
  });
};
