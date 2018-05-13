import { combineReducers } from 'redux';

import sessionReducer from './session_reducer';
import loadingReducer from './loading_reducer';
import entitiesReducer from './entities_reducer';
import errorsReducer from './errors_reducer';

const rootReducer = combineReducers({
  session: sessionReducer,
  loading: loadingReducer,
  entities: entitiesReducer,
  errors: errorsReducer
});

export default rootReducer;
