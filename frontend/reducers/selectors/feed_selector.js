import values from 'lodash/values';

export const selectAllFeeds = state => values(state.entities.feeds);
