import React from 'react';

class LoginStatus extends React.Component{
  constructor(props){
    super(props);
    this.sate = this.props.currentUser;
  }

  componentWillReceiveProps(newProps){
    this.setState(newProps.currentUser);
  }
  render(){
    debugger
    if (this.props.currentUser) {
      return(
        <div>
          <p>{currentUser.username}</p>
          <button onClick={() => dosomething(AWESOME)}>Log out</button>
          {alert("current user")}
        </div>
      );
    }
    return(
      <div>
        <button onClick={() => dosomething(AWESOME)}>Sign In</button>
        <button onClick={() => dosomething(AWESOME)}>Sign Up</button>
        {alert("no current user")}
      </div>
    );
  }
}



export default LoginStatus;
