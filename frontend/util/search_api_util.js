
export const searchShows = (shows, searchText) => {
  return (
    shows.filter((show) => {
      return show.title.toLowerCase().indexOf(searchText.toLowerCase()) !== -1;
    })
  );
};
