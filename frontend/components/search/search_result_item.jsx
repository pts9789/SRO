import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const SearchResultItem = ({show, history, clearSearch, fetchShow}) => (
  <div onClick={(e) => {
        fetchShow(show.id);
        clearSearch();
      }
    } className="search-list-item">
    <Link to={`/shows/${show.id}`} className="link-to-show" >{show.title}</Link>
  </div>
);

export default SearchResultItem;
