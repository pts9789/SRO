import React from 'react';

const noCurrentUser = (showModal) => {
  return(
      <ul className="session-list">
        <li className="login-status" onClick={ (e) => showModal("signup")}>SIGN UP</li>
        <li className="login-status" onClick={ (e) => showModal("login")}>LOG IN</li>
      </ul>
  );
};

const userLoggedIn = (currentUser, logout) => {
  return(
      <ul className="session-list">
        <li className="login-status" >{currentUser.username}</li>
        <li className="login-status" onClick={logout}>LOG OUT</li>
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
