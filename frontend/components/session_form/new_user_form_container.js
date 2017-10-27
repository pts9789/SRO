import { connect } from 'react-redux';
import { hideModal, showModal } from '../../actions/modal_actions';
import { signup } from '../../actions/session_actions';
import NewUserForm from './new_user_form';


const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.errors.session
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    signup: (user) => dispatch(signup(user)),
    hideModal: () => dispatch(hideModal()),
    switchModal: () => dispatch(showModal('login'))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NewUserForm);
