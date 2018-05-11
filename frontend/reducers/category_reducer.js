import merge from 'lodash/merge';

import { RECEIVE_CATEGORIES } from '../actions/category_actions';

const _defaultState = {};

export const categoryReducer = (state = _defaultState, action) => {
  Object.freeze(state);
  let newState = {};

  switch (action.type) {
    case RECEIVE_CATEGORIES:
      action.categories.forEach((category) => {
        newState[category.id] = category;
      });
      return newState;
    default:
      return state;
  }
}
