import React from 'react';
import { Link } from 'react-router-dom';

const ShowIndexItem = ({ show }) => (
  <li>
    <span>{show.title}</span>
  </li>
);

export default ShowIndexItem;
