import {
  START_LOADING_CATEGORIES,
  RECEIVE_CATEGORIES
} from '../actions/category_actions';

const initialState = {
  indexLoading: false
};

const loadingReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CATEGORIES:
      return Object.assign({}, state, { indexLoading: false });
    case START_LOADING_CATEGORIES:
      return Object.assign({}, state, { indexLoading: true });
    default:
      return state;
  }
};

export default loadingReducer;
