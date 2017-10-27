import React from 'react';

const noCurrentUser = (showModal, login) => {
  let guest = {username:"guest", password:"arizona"};
  return(
      <ul className="session-list">
        <li className="login-status" onClick={ (e) => login(guest)}>GUEST DEMO</li>
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

const LoginStatus = ({ currentUser, logout, showModal, login }) => {
  if (currentUser) {
    return(userLoggedIn(currentUser, logout))
  } else {
    return noCurrentUser(showModal, login)
  }

}

export default LoginStatus;
