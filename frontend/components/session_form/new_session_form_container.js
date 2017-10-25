import { connect } from 'react-redux';
import { hideModal } from '../../actions/session_actions';
import { login } from '../../actions/session_actions';
import NewSessionForm from './new_session_form';


const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.errors.session
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    submitForm: (user) => dispatch(login(user)),
    hideModal: () => dispatch(hideModal()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NewSessionForm);
