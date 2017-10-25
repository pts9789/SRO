import React from 'react';
import NewSessionFormContainer from '../session_form/new_session_form_container';
import NewUserFormContainer from '../session_form/new_user_form_container';


class LoginStatus extends React.Component{
  constructor(props){
    super(props);
    this.state = this.props.currentUser;
  }

  componentWillReceiveProps(newProps){
    this.setState(newProps.currentUser);
  }
  render(){

    if (this.props.currentUser) {
      return(
        <div>
          <p>{currentUser.username}</p>
          <button onClick={() => this.props.logout(this.props.currentUser)}>Log out</button>
          {alert("current user")}
        </div>
      );
    }
    return(
      <div>
        <button onClick={() => this.props.showModal(<NewUserFormContainer />)}>Sign Up</button>
        <button onClick={() => this.props.showModal(<NewSessionFormContainer />)}>Sign In</button>
        {alert("no current user")}
      </div>
    );
  }
}



export default LoginStatus;
