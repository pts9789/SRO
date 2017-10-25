import { connect } from 'react-redux';

import { login } from '../../actions/session_actions';
import NewSessionForm from './new_session_form';


const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.errors.session
  };
};

const mapDispatchToProps = (dispatch) => {
  const formType = "Sign In";
  return {
    submitForm: user => dispatch(login(user)),
    formType
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NewSessionForm);
