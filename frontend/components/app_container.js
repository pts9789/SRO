import { connect } from 'react-redux';

import App from './App';

const mapStateToProps = (state) => {
  return({modal: state.modal});
};


export default connect(mapStateToProps, null)(App);
