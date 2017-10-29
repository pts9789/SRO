import React from 'react';
import { connect } from 'react-redux';
import { Route, Switch } from 'react-router-dom';
import ShowIndexContainer from './shows/show_index_container';
import ShowShowContainer from './shows/show_show_container';


const MainPage = () => (
    <div>
      <ShowIndexContainer />
      <Switch>
        <Route path="/shows/:showId" component={ShowShowContainer} />
      </Switch>
    </div>
);

export default MainPage;
