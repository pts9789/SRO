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
        <div className="main-page-plays">
          <div className="main-page-list-header"></div>
          <ul>
            {
              this.props.plays.map((show) => (
                <ShowIndexItem key={show.id} show={show} />
              ))
            }
          </ul>
          </div>
        <ul>
          {
            this.props.musicals.map((show) => (
              <ShowIndexItem key={show.id} show={show} />
            ))
          }
        </ul>
      </div>
    );
  }
}

export default ShowIndex;
