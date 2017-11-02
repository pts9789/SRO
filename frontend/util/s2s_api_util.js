export const createShowsToSee = (showsToSee) => {
  return(
    $.ajax({
      method: "POST",
      url: "api/shows_to_see",
      data: { showsToSee },
    })
  );
};



export const deleteShowsToSee = (id) => {
  return(
    $.ajax({
      method: "DELETE",
      url: `api/shows_to_see/${id}`,
    })
  );
};
