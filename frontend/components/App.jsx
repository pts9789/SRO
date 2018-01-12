import React from 'react';
import NavBar from './nav_bar';
import Footer from './footer';
import MyModal from './myModal';
import MainPage from './main_page'
import { connect } from 'react-redux';
import ShowIndexContainer from './shows/show_index_container';
import ShowShowContainer from './shows/show_show_container';
import { Route, Switch } from 'react-router-dom';

const App = ({modal, hideModal}) => (
    <div className="main-app">
      <header className="app-header">
        <NavBar />
      </header>

      <MainPage />

      <footer className="app-footer">
        <Footer />
      </footer>
    </div>
);

export default App;
