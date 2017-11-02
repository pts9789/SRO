import React from 'react';

class ShowReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: 99,
      body: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }


  handleSubmit(e) {
    e.preventDefault();
    const showId = parseInt(this.props.match.params.showId);
    const review = Object.assign({}, this.state, {
      show_id: showId
    });
    this.props.createReview({review});
    this.navigateToBenchShow();
  }


  update(field) {
    return (e) => this.setState({
      [field]: e.currentTarget.value
    });
  }

  render() {
    return (
      <div className="show-review-form-score-and-body-container">
        <form onSubmit={this.handleSubmit}>
          <input
            type="number"
            placeholder="     ADD YOUR RATING ⭐ ⭐ ⭐ ⭐ ⭐"
            className="show-review-form-score"
            min="0"
            max="100" />

          <textarea
            cols="100"
            rows="5"
            placeholder="    ADD YOUR REVIEW!"
            className="show-review-form-body"
            value={this.state.body}
            onChange={this.update("body")} />

          <input
            type="submit"
            className="show-review-form-button"
            value="Post" />
        </form>

      </div>
    );
 }
}

export default ShowReviewForm;
