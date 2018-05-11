import { RECEIVE_ENTRIES } from '../actions/entry_actions';

const _defaultState = {};

export const entryReducer = (state = _defaultState, action) => {
  switch (action.type) {
    case RECEIVE_ENTRIES:
      let newState = {};
      action.entries.forEach(entry => newState[entry.id] = entry);
      return newState;
    default:
      return state;
  }
}
