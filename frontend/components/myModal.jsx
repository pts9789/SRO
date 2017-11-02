import React from 'react';

const MyModal = ({modal, component: Component, hideModal}) => {
  let content = null;
  if (modal) {
    content = (

      <div className="modal-backdrop" onClick={hideModal}>
        <div onClick={ (e) => e.stopPropagation() }>
          <Component/>
        </div>
      </div>
    );
  }

  return content;
}

export default MyModal;

// each Modal (login, signup) has its own
// corresponding component (NewSessionForm, NewUserForm)
