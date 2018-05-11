import * as CategoryAPIUtil from '../util/category_api_util';

export const RECEIVE_CATEGORIES = 'RECEIVE_CATEGORIES';
export const RECEIVE_CATEGORY_FEEDS = 'RECEIVE_CATEGORY_FEEDS';
export const RECEIVE_CATEGORIES_ERRORS = 'RECEIVE_CATEGORIES_ERRORS';
export const START_LOADING_CATEGORIES = 'START_LOADING_CATEGORIES';
export const START_LOADING_CATEGORY_FEEDS = 'START_LOADING_CATEGORY_FEEDS';

export const receiveCategories = (categories) => ({
  type: RECEIVE_CATEGORIES,
  categories: categories
});

export const receiveCategoryFeeds = (feeds) => ({
  type: RECEIVE_CATEGORY_FEEDS,
  feeds: feeds
});

export const receiveErrors = errors => ({
  type: RECEIVE_CATEGORIES_ERRORS,
  errors
});

export const loadingCategories = () => ({
  type: START_LOADING_CATEGORIES
});

export const loadingCategoryFeeds = () => ({
  type: START_LOADING_CATEGORY_FEEDS
});

export const fetchCategories = () => (dispatch) => {
  dispatch(loadingCategories());
  return CategoryAPIUtil.fetchCategories().then((categories) => (
    dispatch(receiveCategories(categories))
  ), (err) => (
    dispatch(receiveErrors(err.responseJSON))
  ))
};

export const fetchCategoryFeeds = (categoryId) => (dispatch) => {
  dispatch(loadingCategoryFeeds());
  return CategoryAPIUtil.fetchCategoryFeeds(categoryId).then((feeds) => (
    dispatch(receiveCategoryFeeds(feeds))
  ), (err) => (
    dispatch(receiveErrors(err.responseJSON))
  ))
};
