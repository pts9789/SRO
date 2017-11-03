import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const ShowIndexItem = ({ show, router, history }) => {

  let myIcon;
  if (show.show_score >= 85) {
    (myIcon = window.images.sro_icon);
  } else if (show.show_score >= 60) {
    (myIcon = window.images.comedy_icon);
  } else {
    (myIcon = window.images.tragedy_icon);
  }

  let score;
  if (!show.show_score) {
    (score = "N/A");
  } else {
    (score = `${show.show_score}%`);
  }

  if (show.status === "Now Playing") {
    return (
      <li className="show-index-item">
        <Link to={`/shows/${show.id}`} className="link-to-show" >
          <img className="index-critic-score-icon" src={myIcon} />
          <div className="index-critic-score">{score}</div>
          {show.title}</Link>
      </li>
    );
  } else {
    return (
      <li className="show-index-item">
        <Link to={`/shows/${show.id}`} className="link-to-show" >{show.title}</Link>
      </li>
    );
  }
}

export default ShowIndexItem;
