import * as FeedAPIUtils from '../util/feed_api_util';

export const RECEIVE_FEED_ENTRIES = 'RECEIVE_FEEDS';
export const RECEIVE_FEEDS_ERRORS = 'RECEIVE_FEEDS_ERRORS';
export const START_LOADING_FEED_ENTRIES = 'START_LOADING_FEED_ENTRIES';

export const receiveFeedEntries = (feeds) => ({
  type: RECEIVE_FEED_ENTRIES,
  feeds: feeds
});

export const receiveErrors = errors => ({
  type: RECEIVE_FEEDS_ERRORS,
  errors
});

export const loadingFeedEntries = () => ({
  type: START_LOADING_FEED_ENTRIES
});

export const fetchFeedEntries = (feedId) => (dispatch) => {
  dispatch(loadingFeeds());
  return FeedAPIUtils.fetchFeedEntries(feedId).then((entries) => (
    dispatch(receiveFeedEntries(entries)),
    (err) => (
      dispatch(receiveErrors(err))
    )
  ));
};
