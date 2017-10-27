import { connect } from 'react-redux';
import { hideModal, showModal } from '../../actions/modal_actions';
import { login, logout } from '../../actions/session_actions';
import NewSessionForm from './new_session_form';


const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.errors.session
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    login: (user) => dispatch(login(user)),
    hideModal: () => dispatch(hideModal()),
    switchModal: () => dispatch(showModal("signup"))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NewSessionForm);
