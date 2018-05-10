export const fetchCategories = () => ($.ajax({
  url: 'api/categories',
  method: 'GET',
  error: (error) => console.log(error)
}));

export const fetchCategoryFeeds = (catgoryId) => ($.ajax({
  url: 'api/categories/${categoryId}',
  method: 'GET',
  error: (error) => console.log(error)
}));
