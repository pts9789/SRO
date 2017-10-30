import React from 'react';
import NavBar from './nav_bar';
import Footer from './footer';
import MyModal from './myModal';
import MainPage from './main_page'
import { connect } from 'react-redux';

const App = ({modal, hideModal}) => (
    <div className="main-app">
      <header className="app-header">
        <NavBar />
      </header>

      <MainPage />

      <footer>
        <Footer />
      </footer>
    </div>
);

export default App;
