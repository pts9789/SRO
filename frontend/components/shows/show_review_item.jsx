import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const ShowReviewItem = ({ review, router, history, currentUserID, deleteReview, fetchShow, showId }) => {

  let myIcon;
  if (review.score > 84) {
    (myIcon = window.images.sro_icon);
  } else if (review.score > 60) {
    (myIcon = window.images.comedy_icon);
  } else {
    (myIcon = window.images.tragedy_icon);
  }

  let toDelete;
  if (review.author_id == currentUserID) {
    toDelete = <li className="show-review-delete"
      onClick={() => deleteReview(review).then(() => fetchShow(showId))}
      >Delete</li>;
  }

  if (review.type === "CriticReview") {
    return (
      <li className="show-review-item">
        <div className="show-review-content">
          <div className="review-score-icon-text-container">
            <img className="show-review-score-icon" src={myIcon} />
            <div className="show-review-text">{review.body}</div>
          </div>
          <div className="review-score-link-container">
            <div className="show-review-score">Score: {review.score}</div>
            <a href={review.link_to_review} target="_blank" className="show-review-link">Full Review...</a>
          </div>
        </div>

        <div className="show-review-author-info">
          <div className="show-review-author-name">{review.author_name}</div>
          <div className="show-review-publication">{review.publication}</div>
        </div>
      </li>
    );
  } else {
    return (
      <li className="show-review-item">
        <div className="show-review-content">
          <div className="review-score-icon-text-container">
            <img className="show-review-score-icon" src={myIcon} />
            <div className="show-review-text">{review.body}</div>
          </div>
          <div className="review-score-link-container">
            <div className="show-review-score">Score: {review.score}</div>
          </div>
        </div>

        <ul className="show-review-author-info">
          <li className="show-review-author-name">{review.author_name}</li>
          {toDelete}
        </ul>
      </li>
    );
  }
}

export default ShowReviewItem;
