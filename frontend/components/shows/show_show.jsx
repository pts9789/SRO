
import React from 'react';
import { Route } from 'react-router-dom';
import ShowIndexItem from './show_index_item';

class ShowShow extends React.Component {

  componentDidMount() {
    this.props.fetchShow(this.props.match.params.showId);
  }

  render() {
    return(
      <div>
        <h1>I would be the title of the show</h1>
      </div>
    );
  }
}

export default ShowShow;
