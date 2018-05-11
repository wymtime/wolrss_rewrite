import { combineReducers } from 'redux';

import { usersReducer } from './users_reducer';
import { categoryReducer } from './category_reducer';
import { feedReducer } from './feed_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  categories: categoryReducer,
  feeds: feedReducer
});

export default entitiesReducer;
