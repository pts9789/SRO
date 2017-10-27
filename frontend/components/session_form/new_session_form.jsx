import React from 'react';

class NewSessionForm extends React.Component {

  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = {
      username: "",
      password: ""
    };
  }

  update(field) {
    return (e) => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.login(this.state).then(this.props.hideModal);
  }

// Use this in render so that the errors show up on the page.
  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, idx) => (
          <li key={idx} className="session-errors">
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return(
      <div className="modal-component session-form-container">
        <div className="session-form-header">
          <p className="session-form-title">LOG IN</p>
          <p className="modal-close-x" onClick={ (e) => this.props.hideModal()}>x</p>
        </div>
        {this.renderErrors()}
        <form className="modal-form-box" onSubmit={this.handleSubmit}>
          <div>
            <label className="session-form-label" htmlFor="username">Username</label>
              <input
                type="text"
                name="username"
                placeholder="Username"
                value={this.state.username}
                className="session-form-input"
                onChange={this.update('username')}/>
            <br/>
            <label className="session-form-label" htmlFor="password">Password</label>
              <input
                type="password"
                name="password"
                placeholder="Password"
                value={this.state.password}
                className="session-form-input"
                onChange={this.update('password')}/>
            <br/>
            <input
              type="submit"
              value="Sign In!"/>
          </div>
        </form>
      </div>
    );

  }
}

export default NewSessionForm;
