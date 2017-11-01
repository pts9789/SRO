
import React from 'react';
import { Route } from 'react-router-dom';
import ShowIndexItem from './show_index_item';
import ShowReviewItem from './show_review_item';

class ShowShow extends React.Component {

  constructor(props){
    super(props);
    this.state = this.props.show || {};
  }

  componentDidMount() {
    this.props.fetchShow(this.props.match.params.showId);
  }
  componentWillReceiveProps(newProps){
    this.setState(newProps.show);
  }

  render() {
    let criticIcon;
    if (this.state.critic_score > 84) {
      (criticIcon = window.images.sro_icon);
    } else if (this.state.critic_score > 60) {
      (criticIcon = window.images.comedy_icon);
    } else {
      (criticIcon = window.images.tragedy_icon);
    }

    let criticScore;
    if (!this.state.critic_score) {
      (criticScore = "N/A");
    } else {
      (criticScore = `${this.state.critic_score}%`);
    }
    return(
      <div className="show-show-page">

        <div className="show-information-content">
          <div className="show-container-for-title-image">
            <div className="show-container-for-image">
              <img className="show-show-image"src={this.state.image_url} />
            </div>
            <div className="show-container-for-title">
              <span className="show-show-title">{this.state.title}</span>
            </div>
          </div>
          <div className="show-container-upper-content">
            <div className="show-container-for-theater-status">
              <span className="show-show-info">{this.state.status}</span>
              <span className="show-show-info">{this.state.theater_info}</span>
              <span className="show-show-info">{this.state.year}</span>
            </div>
          </div>
          <div className="show-show-right-side-content">
            <div className="show-show-upper-right-content-container">
              <div className="show-show-upper-right-content1-container">
                <div className="show-show-upper-right-content-header">SRO SCORE</div>
                <div className="show-show-upper-right-content1">
                  <div className="show-container-for-critic-score">
                    <img className="show-critic-score-icon" src={criticIcon} />
                    <div className="show-critic-score">{criticScore}</div>
                  </div>
                  <div className="show-container-for-critic-consensus">
                    <span className="critic_consensus-header">Critic Consensus:</span>
                    <p>{this.state.critic_consensus}</p>
                  </div>
                </div>
              </div>
              <div className="show-show-upper-right-content2-container">
                <div className="show-show-upper-right-content-header">USER SCORE</div>
                <div className="show-show-upper-right-content2">

                </div>
              </div>
            </div>
            <div className="show-show-bottom-right-content" >
            </div>
          </div>
        </div>

        <div className="show-reviews-lists">
          <div className="show-review-list-container">
            <div className="show-review-list-header">CRITIC REVIEWS</div>
            <ul className="show-review-list-critics">
              {
                this.props.critic_reviews.map((review) => (
                  <ShowReviewItem key={review.id} review={review} />
                ))
              }
            </ul>

          </div>
          <div className="show-review-list-container">
            <div className="show-review-list-header">USER REVIEWS</div>
            <ul className="show-review-list-critics">
              {
                this.props.user_reviews.map((review) => (
                  <ShowReviewItem key={review.id} review={review} />
                ))
              }
            </ul>
          </div>
        </div>

      </div>
    );
  }
}

export default ShowShow;
