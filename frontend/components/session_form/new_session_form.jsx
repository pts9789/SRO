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
        <h2>SIGN IN</h2>
        {this.renderErrors()}
        <form className="modal-form-box" onSubmit={this.handleSubmit}>
          <div className="session-form">
            <label>Username:
              <input
                type="text"
                value={this.state.username}
                onChange={this.update('username')}/>
            </label>

            <label>Password:
              <input
                type="password"
                value={this.state.password}
                onChange={this.update('password')}/>
            </label>

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
