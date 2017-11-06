import {connect} from 'react-redux';
import {withRouter} from 'react-router-dom';
import SearchBar from './search_bar';
import { fetchAllShows, fetchShow } from '../../actions/shows_actions';


const mapStateToProps = (state) => {
  return({
      shows: Object.values(state.entities.shows)
    }
  );
};

const mapDispatchToProps = (dispatch) => {
  return({
      fetchShows: () => dispatch(fetchAllShows()),
      fetchShow: (id) => dispatch(fetchShow(id)),
    }
  );
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SearchBar));
