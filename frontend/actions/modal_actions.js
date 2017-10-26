export const SHOW_MODAL = 'SHOW_MODAL';
export const HIDE_MODAL = 'HIDE_MODAL';

export const showModal = (modal) => {
  return({
    type: SHOW_MODAL,
    modal
  });
};

export const hideModal = () => {
  return({
    type: HIDE_MODAL,
    component: null
  });
};
