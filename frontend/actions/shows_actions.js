import * as APIUtil from '../util/shows_api_util';

export const RECEIVE_ALL_SHOWS = 'RECEIVE_ALL_SHOWS';
export const RECEIVE_SHOW = 'RECEIVE_SHOW';

export const receiveAllShows = (payload) => {
  return({
    type: RECEIVE_ALL_SHOWS,
    payload
  });
};

export const receiveShow = (payload) => {
  return({
    type: RECEIVE_SHOW,
    payload
  });
};

export const fetchAllShows = () => dispatch => {
  return APIUtil.fetchAllShows().then((shows) => {
    return dispatch(receiveAllShows(shows));
  });
};

export const fetchShow = (id) => dispatch => {
  return APIUtil.fetchShow(id).then((show) => {
    return dispatch(receiveShow(show));
  });
};
