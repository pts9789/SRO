import React from 'react';
import { Route } from 'react-router-dom';
import ShowIndexItem from './show_index_item';

class ShowIndex extends React.Component {

  componentDidMount() {
    this.props.fetchAllShows();
  }

  render() {
    return(
      <div className="main-page-show-lists">
        <div className="main-page-list-container">
          <div className="main-page-list-header">PLAYS</div>
          <ul>
            {
              this.props.plays.map((show) => (
                <ShowIndexItem key={show.id} show={show} />
              ))
            }
          </ul>

        </div>
        <div className="main-page-list-container">
          <div className="main-page-list-header">MUSICALS</div>
          <ul>
            {
              this.props.musicals.map((show) => (
                <ShowIndexItem key={show.id} show={show} />
              ))
            }
          </ul>
        </div>
        <div className="main-page-list-container">
          <div className="main-page-list-header">COMING SOON</div>
          <ul>
            {
              this.props.comingSoon.map((show) => (
                <ShowIndexItem key={show.id} show={show} />
              ))
            }
          </ul>
        </div>
      </div>
    );
  }
}

export default ShowIndex;
