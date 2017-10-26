import React from 'react';

const noCurrentUser = (showModal) => {
  return(
    <div>
      <button onClick={ (e) => showModal("login")}>Sign In</button>
      <button onClick={ (e) => showModal("signup")}>Sign Up</button>
    </div>
  );
};

const userLoggedIn = (currentUser, logout) => {
  return(
    <div>
      <h3>{currentUser.username}</h3>
      <button onClick={logout}>Log Out</button>
    </div>
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
