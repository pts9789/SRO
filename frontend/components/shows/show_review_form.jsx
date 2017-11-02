import React from 'react';

class ShowReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      score: 0,
      body: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }


  handleSubmit(e) {
    e.preventDefault();
    const showId = parseInt(this.props.showId);
    const review = Object.assign({}, this.state, {
      show_id: showId
    });
    if (this.props.loggedIn) {
      this.props.createReview(review);
    } else {
      this.props.launchLogin();
    }

  }

  update(field) {
    return (e) => this.setState({
      [field]: e.currentTarget.value
    });
  }


  renderErrors() {
    return(
      <ul className="review-form-errors">
        {this.props.errors.map((error, idx) => (
          <li key={idx} className="review-form-error-text">
            {error}
          </li>
        ))}
      </ul>
    );
  }

  requireLogin() {
    if (!this.props.loggedIn) {
      this.props.launchLogin();
    }
  }

  render() {
    return (
      <div className="show-review-form-container">
        {this.renderErrors()}
        <div className="show-review-form-score-and-body-container">
          <form onSubmit={this.handleSubmit}>
            <input
              type="number"
              placeholder="    ADD YOUR RATING ⭐ ⭐ ⭐ ⭐ ⭐"
              className="show-review-form-score"
              min="0"
              max="100"
              onClick={ (e) => this.requireLogin()}/>

            <textarea
              cols="100"
              rows="5"
              placeholder="   ADD YOUR REVIEW !"
              className="show-review-form-body"
              value={this.state.body}
              onChange={this.update("body")}/>

            <input
              type="submit"
              className="show-review-form-button"
              value="Post" />
          </form>
        </div>
      </div>
    );
 }
}

export default ShowReviewForm;
