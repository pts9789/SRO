
import React from 'react';
import { Route } from 'react-router-dom';
import ShowIndexItem from './show_index_item';

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
    return(
      <div className="show-show-page">
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
          </div>
        </div>
        <div className="show-show-bottom-right-content" >
          <div className="show-container-for-critic-consensus">
            <span className="critic_consensus-header">Critic Consensus:</span>
            <p>{this.state.critic_consensus}</p>
          </div>
        </div>
      </div>
    );
  }
}

export default ShowShow;
