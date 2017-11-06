import React from 'react';
import {searchShows} from '../../util/search_api_util';
import SearchResultItem from './search_result_item';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {searchText: "", searchResults: []};
    this.handleInput = this.handleInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.clearSearch = this.clearSearch.bind(this);
  }

  componentDidMount() {
    this.props.fetchShows();
  }

  handleInput(e) {
    this.setState({searchText: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.history.push(`/search/${this.state.searchText}`);
    this.clearSearch();
  }

  clearSearch(e) {
    this.setState({searchText: ""});
  }



  render() {

    let searchResults;
    if (this.state.searchText === "") {
      searchResults = [];
    } else {
      searchResults = searchShows(this.props.shows, this.state.searchText)
      .map((show, idx) => {
        return <SearchResultItem clearSearch={this.clearSearch}
          show={show} key={idx} fetchShow={this.props.fetchShow}/>;

      }
    );
    }

    return (
      <div className="search-bar-container">
        <form onSubmit={this.handleSubmit}  >
          <input
            type="text"
            placeholder="Search for Shows"
            className="search-bar"
            onChange={this.handleInput}
            value={this.state.searchText} />
        </form>
        <ul className="search-dropdown">
          {searchResults}
        </ul>
      </div>
    );
  }
}

export default SearchBar;
