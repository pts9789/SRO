import React from 'react';

const SearchResultItem = ({show, history, clearSearch}) => (
  <div onClick={ (e) => {
        history.push(`/shows/${show.id}`);
        clearSearch();
      }
    }>
    <p>{show.title}</p>
  </div>
);

export default SearchResultItem;
