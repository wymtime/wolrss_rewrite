export const fetchFeeds = (id) => ($.ajax({
  url: 'api/feeds/${id}',
  method: 'GET',
  error: (error) => console.log(error)
}));

export const fetchFeedEntries = (id) => ($.ajax({
  url: 'api/feeds/${id}/entries',
  method: 'GET',
  error: (error) => console.log(error)
}));
