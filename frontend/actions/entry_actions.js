import * as EntryAPIUtils from '../util/entry_api_util';

export const RECEIVE_ENTRIES = 'RECEIVE_ENTRIES';
export const RECEIVE_ENTRIES_ERRORS = 'RECEIVE_ENTRIES_ERRORS';
export const START_LOADING_ENTRIES = 'START_LOADING_ENTRIES';

export const receiveEntries = (entries) => ({
  type: RECEIVE_ENTRIES,
  entries: entries
});

export const receiveErrors = errors => ({
  type: RECEIVE_ENTRIES_ERRORS,
  errors
});

export const loadingEntries = () => ({
  type: START_LOADING_ENTRIES
});

export const fetchEntries = (feedId) => (dispatch) => {
  dispatch(loadingEntries());
  return EntryAPIUtils.fetchEntries(feedId).then((entries) => (
    dispatch(receiveEntries(entries)),
    (err) => (
      dispatch(receiveErrors(err))
    )
  ));
};
