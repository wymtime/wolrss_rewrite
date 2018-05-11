import values from 'lodash/values';

export const selectAllEntries = state => values(state.entities.entries);
