export const allCategories = (categories) => {
  let cats = {};
  categories.responseJSON.forEach((category) => {
    cats[category.id] = category;
  });
  return cats;
}
