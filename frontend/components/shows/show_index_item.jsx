import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const ShowIndexItem = ({ show, router, history }) => (
  <li className="show-index-item">
    <Link to={`/shows/${show.id}`} className="link-to-show" >{show.title}</Link>
  </li>
);

export default ShowIndexItem;
