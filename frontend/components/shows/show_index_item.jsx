import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const ShowIndexItem = ({ show, router, history }) => (
  <li>
    <Link to={`/shows/${show.id}`}>{show.title}</Link>
  </li>
);

export default ShowIndexItem;
