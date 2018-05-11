import React from 'react';
import { connect } from 'react-redux';

import FeedIndex from './feed_index';

import { fetchFeeds } from '../../actions/feed_actions';
import { selectAllFeeds } from '../../reducers/selectors/feed_selector';


const mapStateToProps = (state) => ({
  feeds: selectAllFeeds(state),
  loading: state.loading.indexLoading
});

const mapDispatchToProps = (dispatch) => ({
  requestFeeds: (categoryId) => dispatch(fetchFeeds(categoryId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FeedIndex);
