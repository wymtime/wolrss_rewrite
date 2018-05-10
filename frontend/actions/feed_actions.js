import * as FeedAPIUtils from '../util/feed_api_util';

export const RECEIVE_FEEDS = "RECEIVE_FEEDS";

export const receiveFeeds = (feeds) => ({
  type: RECEIVE_FEEDS,
  feeds: feeds
});

export const receiveErrors = errors => ({
  type: RECEIVE_FEEDS_ERRORS,
  errors
});

export const loadingFeeds = () => ({
  type: START_LOADING_FEEDS
});

export const fetchFeeds = (categoryId) => (dispatch) => {
  dispatch(loadingFeeds());
  return FeedAPIUtils.fetchFeeds(categoryId).then((feeds) => (
    dispatch(receiveFeeds(feeds)),
    (err) => (
      dispatch(receiveErrors(err))
    )
  ));
};
