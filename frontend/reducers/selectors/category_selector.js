import values from 'lodash/values';

export const allCategories = (categories) => {
  let cats = {};
  categories.responseJSON.forEach((category) => {
    cats[category.id] = category;
  });
  return cats;
}

export const selectAllCategories = state => values(state.entities.categories);

export const selectAllCategoryFeeds = (category) => {
  let feeds = {};
  category.feeds.forEach((feed) => {
    feeds[feed.id] = feed;
  });
  return feeds;
}
