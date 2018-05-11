export const fetchEntries = (feedId) => ($.ajax({
  url: `api/feeds/${feedId}/entries`,
  method: 'GET',
  error: (error) => console.log(error)
}));
