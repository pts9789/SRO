import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const ShowReviewItem = ({ review, router, history }) => {

  let myIcon;
  if (review.score > 84) {
    (myIcon = window.images.sro_icon);
  } else if (review.score > 60) {
    (myIcon = window.images.comedy_icon);
  } else {
    (myIcon = window.images.tragedy_icon);
  }

  return (
    <li className="show-review-item">
      <div className="show-review-content">
        <div className="show-review-text"> <img className="show-review-score-icon" src={myIcon} /> {review.body}</div>
        <div className="show-review-score">{review.score}</div>
        <a href={review.link_to_review} className="show-review-link">Full Review...</a>
      </div>

      <div className="show-review-author-info">
        <div className="show-review-author-name">{review.author_name}</div>
        <div className="show-review-publication">{review.publication}</div>
      </div>
    </li>
  );
}

export default ShowReviewItem;
