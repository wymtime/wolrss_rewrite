export const fetchCategoryWithFeeds = (categoryId) => ($.ajax({
  url: `api/categories/${categoryId}`,
  method: 'GET',
  error: (error) => console.log(error)
}));

// export const fetchFeedEntries = (id) => ($.ajax({
//   url: 'api/feeds/${id}/entries',
//   method: 'GET',
//   error: (error) => console.log(error)
// }));
