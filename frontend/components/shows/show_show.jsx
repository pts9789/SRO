
import React from 'react';
import { Route } from 'react-router-dom';
import ShowIndexItem from './show_index_item';

class ShowShow extends React.Component {

  constructor(props){
    super(props);
    this.state = this.props.show || {};
  }

  componentDidMount() {
    this.props.fetchShow(this.props.match.params.showId);
  }
  componentWillReceiveProps(newProps){
    this.setState(newProps.show);
  }

  render() {
    return(
      <div>
        <h1>{this.state.title}</h1>
      </div>
    );
  }
}

export default ShowShow;
