import React from 'react';
import NavBar from './nav_bar';
import Footer from './footer';
import MyModal from './myModal';

import { connect } from 'react-redux';

const App = ({modal, hideModal}) => (
    <div className="main-app">
      <header className="app-header">
        <NavBar />
      </header>

      <h1>SRO(ttenTomatoes)</h1>

      <footer>
        <Footer />
      </footer>
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

export default connect(mapStateToProps, mapDispatchToProps)(App);
