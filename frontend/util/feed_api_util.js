export const fetchFeeds = (id) => ($.ajax({
  url: 'api/feeds/${id}',
  method: 'GET',
  error: (error) => console.log(error)
}));
