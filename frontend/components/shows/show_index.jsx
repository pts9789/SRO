import React from 'react';
import { Link, withRouter, Route } from 'react-router-dom';
import ShowIndexItem from './show_index_item';


class ShowIndex extends React.Component {

  componentDidMount() {
    this.props.fetchAllShows();
  }

  showImages(){
    let spongebob = window.images.image1 ;
    let denzel = window.images.image2 ;
    let mockingbird = window.images.image3 ;
    let rylance = window.images.image4 ;
    let frozen = window.images.image5 ;
    let harrypotter = window.images.image6 ;
    let meangirls = window.images.image8 ;


    return(
      <div className="photo-banner">
        <Link to="/shows/2"><img className="photo-banner-image" src={denzel} alt="" /></Link>
        <Link to="/shows/16"><img className="photo-banner-image" src= {spongebob} alt="" /></Link>
        <Link to="/shows/4"><img className="photo-banner-image" src= {mockingbird} alt="" /></Link>
        <Link to="/shows/12"><img className="photo-banner-image" src= {meangirls} alt="" /></Link>
        <Link to="/shows/1"><img className="photo-banner-image" src= {harrypotter} alt="" /></Link>
        <Link to="/shows/15"><img className="photo-banner-image" src= {frozen} alt="" /></Link>
        <Link to="/shows/5"><img className="photo-banner-image" src= {rylance} alt="" /></Link>
      </div>
    );
  }

  render() {
    return(
      <div className="show-index">
        {this.showImages()}
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
      </div>
    );
  }
}

export default ShowIndex;
