import {connect} from 'react-redux';
import {withRouter} from 'react-router-dom';
import SearchBar from './search_bar';
import {fetchAllShows} from '../../actions/shows_actions';


const mapStateToProps = (state) => (
  {
    recipes: Object.values(state.entities.shows)
  }
);

const mapDispatchToProps = (dispatch) => (
  {
    fetchShows: (() => dispatch(fetchAllShows())),
  }
);

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SearchBar));
