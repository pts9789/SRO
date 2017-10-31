import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import { connect } from 'react-redux';
import MyModal from './myModal';
import { hideModal } from '../actions/modal_actions';
import { fetchShow } from '../actions/shows_actions';
import LoginStatusContainer from './login_status/login_status_container';
import NewSessionFormContainer from './session_form/new_session_form_container';
import NewUserFormContainer from './session_form/new_user_form_container';


// Ternary for my Modal will only work for login/signup
// When you add in the Modal for the user review, use similar
// logic on main page.

const NavBar = ({ modal, hideModal, fetchShow }) => {
  return(
    <div className="nav-bar-container">
      <div className="nav-bar-main">
        <Link to="/"> <img className="logo" src={window.images.logo} /> </Link>

        <LoginStatusContainer />

        <MyModal component={ modal === 'login' ? NewSessionFormContainer : NewUserFormContainer}
          modal={modal}
          hideModal={hideModal} />
      </div>

        <div className="trending-bar-under-nav">
          <div className="trending-text">TRENDING ON SRO</div>
          <Link to="/shows/25" className="trending-show" onClick={ (e) => fetchShow(25)} >HAMILTON</Link>
          <Link to="/shows/29" className="trending-show" onClick={ (e) => fetchShow(29)} >DEAR EVAN HANSEN</Link>
          <Link to="/shows/21" className="trending-show" onClick={ (e) => fetchShow(21)} >THE BOOK OF MORMON</Link>
        </div>
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
    hideModal: () => dispatch(hideModal()),
    fetchShow: (id) => dispatch(fetchShow(id))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);
