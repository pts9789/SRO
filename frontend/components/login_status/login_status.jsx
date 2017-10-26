import React from 'react';

const noCurrentUser = (showModal) => {
  return(
      <ul className="session-list">
        <li onClick={ (e) => showModal("login")}>SIGN IN</li>
        <li onClick={ (e) => showModal("signup")}>SIGN UP</li>
      </ul>
  );
};

const userLoggedIn = (currentUser, logout) => {
  return(
      <ul className="session-list">
        <li>{currentUser.username}</li>
        <li onClick={logout}>LOG OUT</li>
      </ul>
  );
};

const LoginStatus = ({ currentUser, logout, showModal }) => {
  if (currentUser) {
    return(userLoggedIn(currentUser, logout))
  } else {
    return noCurrentUser(showModal)
  }

}

export default LoginStatus;
