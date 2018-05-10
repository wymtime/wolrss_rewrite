export const fetchCategories = () => ($.ajax({
  url: 'api/categories',
  method: 'GET',
  error: (error) => console.log(error)
}));
