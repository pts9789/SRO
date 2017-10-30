import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import { connect } from 'react-redux';
import MyModal from './myModal';
import { hideModal } from '../actions/modal_actions';
import LoginStatusContainer from './login_status/login_status_container';
import NewSessionFormContainer from './session_form/new_session_form_container';
import NewUserFormContainer from './session_form/new_user_form_container';


// Ternary for my Modal will only work for login/signup
// When you add in the Modal for the user review, use similar
// logic on main page.

const NavBar = ({ modal, hideModal }) => {
  return(
    <div className="nav-bar">
      <Link to="/"> <img className="logo" src={window.images.logo} /> </Link>

      <LoginStatusContainer />
      <MyModal component={ modal === 'login' ? NewSessionFormContainer : NewUserFormContainer}
        modal={modal}
        hideModal={hideModal} />
    </div>
  );
};

const mapStateToProps = ({ ui: { modal }}) => {
  return {
    modal,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    hideModal: () => dispatch(hideModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);
