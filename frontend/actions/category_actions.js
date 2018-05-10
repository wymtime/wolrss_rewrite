import * as CategoryAPIUtil from '../util/category_api_util';

export const RECEIVE_CATEGORIES = 'RECEIVE_CATEGORIES';
export const RECEIVE_CATEGORIES_ERRORS = 'RECEIVE_CATEGORIES_ERRORS';

export const receiveCategories = (categories) => ({
  type: RECEIVE_CATEGORIES,
  categories: categories
});

export const receiveErrors = errors => ({
  type: RECEIVE_CATEGORIES_ERRORS,
  errors
});

export const fetchCategories = () => (dispatch) => (
  CategoryAPIUtil.fetchCategories().then((categories) => (
    dispatch(receiveCategories(categories))
  ), (err) => (
    dispatch(receiveErrors(err.responseJSON))
  ))
);
