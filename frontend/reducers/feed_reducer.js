import merge from 'lodash/merge';

import { RECEIVE_FEEDS } from '../actions/feed_actions';

const _defaultState = {};

export const feedReducer = (state = _defaultState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_FEEDS:
      let newState = {};
      action.feeds.forEach((feed) => {
        newState[feed.id] = feed;
      });
      return newState;
    default:
      return state;
  }
}
