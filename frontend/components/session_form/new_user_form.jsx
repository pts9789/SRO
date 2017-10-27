import React from 'react';

class NewUserForm extends React.Component {

    constructor(props) {
      super(props);
      this.handleSubmit = this.handleSubmit.bind(this);
      this.state = {
        email: "",
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
      this.props.signup(this.state).then(this.props.hideModal);
    }

    // Use this in render so that the errors show up on the page.
      renderErrors() {
        return(
          <ul>
            {this.props.errors.map((error, idx) => (
              <li key={idx} className="session-errors" >
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
            <p className="session-form-title">SIGN UP FOR SRO</p>
            <p className="modal-close-x" onClick={ (e) => this.props.hideModal()}>x</p>
          </div>
          {this.renderErrors()}
          <form className="modal-form-box" onSubmit={this.handleSubmit}>
            <div>
              <label className="session-form-label" htmlFor="email">Email</label>
                <input
                  type="text"
                  name="email"
                  value={this.state.email}
                  className="session-form-input"
                  onChange={this.update('email')} />

              <label className="session-form-label" htmlFor="username">Username</label>
                <input
                  type="text"
                  name="username"
                  value={this.state.username}
                  className="session-form-input"
                  onChange={this.update('username')} />

              <label className="session-form-label" htmlFor="password">Password</label>
                <input
                  type="password"
                  name="password"
                  value={this.state.password}
                  className="session-form-input"
                  onChange={this.update('password')} />

              <input
                type="submit"
                className="session-form-button"
                value="Sign Up" />
            </div>
          </form>
          <div className="session-form-footer">
            <p>Already have an account?</p>
            <p className="session-form-modal-switch" onClick={() => this.props.switchModal()}>Log in here</p>
          </div>
        </div>
      );
    }
  }


export default NewUserForm;
