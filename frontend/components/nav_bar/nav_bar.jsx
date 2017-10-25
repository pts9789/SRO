import React from 'react';
import LoginStatusContainer from './login_status_container';
import MyModal from '../myModal';
import { connect } from 'react-redux';

const NavBar = (props) => (
  <div>
    <h2>I'm the Nav Bar</h2>
    <LoginStatusContainer />
  </div>
);

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
