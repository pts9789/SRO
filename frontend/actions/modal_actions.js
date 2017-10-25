export const SHOW_MODAL = 'SHOW_MODAL';
export const HIDE_MODAL = 'HIDE_MODAL';

export const showModal = (component) => {
  return({
    type: SHOW_MODAL,
    component
  });
};

export const hideModal = () => {
  return({
    type: HIDE_MODAL,
    component: null
  });
};
