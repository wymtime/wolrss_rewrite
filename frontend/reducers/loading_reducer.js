import {
  START_LOADING_CATEGORIES,
  RECEIVE_CATEGORIES,
  START_LOADING_CATEGORY_FEEDS,
  RECEIVE_CATEGORY_FEEDS
} from '../actions/category_actions';

const initialState = {
  indexLoading: true
};

const loadingReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CATEGORIES:
      return Object.assign({}, state, { indexLoading: false });
    case RECEIVE_CATEGORY_FEEDS:
      return Object.assign({}, state, { indexLoading: false });
    case START_LOADING_CATEGORIES:
      return Object.assign({}, state, { indexLoading: true });
    case START_LOADING_CATEGORY_FEEDS:
      return Object.assign({}, state, { indexLoading: true });
    default:
      return state;
  }
};

export default loadingReducer;
