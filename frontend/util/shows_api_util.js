export const fetchAllShows = () => (
  $.ajax({
    method: 'get',
    url: "api/shows"
  })
);

export const fetchShow = (id) => (
  $.ajax({
    method: 'get',
    url: `api/shows/${id}`
  })
);
