import React from 'react';
import { withRouter } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: '',
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
      <div>
        <form onSubmit={this.handleSubmit}>
          <label>Rating</label>
            1<input type="radio" name="rating" value="2" checked />
            2<input type="radio" name="rating" value="23" />
            3<input type="radio" name="rating" value="59" />
            4<input type="radio" name="rating" value="85" />
            5<input type="radio" name="rating" value="100" />



          <textarea
            cols="30"
            rows="10"
            value={this.state.body}
            onChange={this.update("body")}
          />
          <br/>
          <input type="submit" />
        </form>

      </div>
    );
 }
}

export default withRouter(ReviewForm);
