
export const searchShows = (shows, searchText) => (
  shows.filter((show) => {
    return show.title.toLowerCase().indexOf(searchText.toLowerCase()) !== -1;
  })
);
