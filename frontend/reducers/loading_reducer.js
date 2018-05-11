import {
  START_LOADING_CATEGORIES,
  RECEIVE_CATEGORIES,
} from '../actions/category_actions';

import {
  START_LOADING_FEEDS,
  RECEIVE_FEEDS
} from '../actions/feed_actions';

import {
  START_LOADING_ENTRIES,
  RECEIVE_ENTRIES
} from '../actions/entry_actions';

const _defaultState = {
  indexLoading: true
};

const loadingReducer = (state = _defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CATEGORIES:
      return Object.assign({}, state, { indexLoading: false });
    case RECEIVE_FEEDS:
      return Object.assign({}, state, { indexLoading: false });
    case RECEIVE_ENTRIES:
      return Object.assign({}, state, { indexLoading: false });
    case START_LOADING_CATEGORIES:
      return Object.assign({}, state, { indexLoading: true });
    case START_LOADING_FEEDS:
      return Object.assign({}, state, { indexLoading: true });
    case START_LOADING_ENTRIES:
      return Object.assign({}, state, { indexLoading: true });
    default:
      return state;
  }
};

export default loadingReducer;
