import { connect } from 'react-redux';

import { login, logout } from '../../actions/session_actions';
import { showModal } from '../../actions/modal_actions';
import LoginStatus from './login_status';



const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  login: (user) => dispatch(login(user)),
  logout: () => dispatch(logout()),
  showModal: (modal) => dispatch(showModal(modal)),
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginStatus);
