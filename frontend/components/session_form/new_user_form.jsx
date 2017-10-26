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
              <li key={idx}>
                {error}
              </li>
            ))}
          </ul>
        );
      }

    render() {

      return(
        <div onClick={ (e) => e.stopPropagation() }>
          <h2>Please Sign Up!</h2>
          {this.renderErrors()}
          <form onSubmit={this.handleSubmit}>

            <label>Email:
              <input
                type="text"
                value={this.state.email}
                onChange={this.update('email')} />
            </label>

            <label>Username:
              <input
                type="text"
                value={this.state.username}
                onChange={this.update('username')} />
            </label>

            <label>Password:
              <input
                type="password"
                value={this.state.password}
                onChange={this.update('password')} />
            </label>

            <input
              type="submit"
              value="Sign Up!" />
          </form>
        </div>
      );
    }
  }

export default NewUserForm;
