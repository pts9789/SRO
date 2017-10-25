import React from 'react';

class NewSessionForm extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.submitForm(this.state);
  }

  render() {
    return(
      <div>
        <h2>Please Sign In!</h2>
        <form onSubmit={this.handleSubmit}>
          <label>Username:
            <input
              type="text"
              value={this.state.username}
              onChange={this.update('username')} />
          </label>

          <label>Password:
            <input
              type="text"
              value={this.state.password}
              onChange={this.update('password')} />
          </label>

          <input
            type="submit"
            value="Sign In!" />
        </form>
      </div>
    );

  }
}

export default NewSessionForm;
