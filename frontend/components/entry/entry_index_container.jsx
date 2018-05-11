import React from 'react';
import { connect } from 'react-redux';

import { fetchEntries } from '../../actions/entry_actions';
import { selectAllEntries } from '../../reducers/selectors/entry_selector';

import EntryIndex from './entry_index';

const mapStateToProps = (state) => ({
  entries: selectAllEntries(state),
  loading: state.loading.indexLoading
});

const mapDispatchToProps = (dispatch) => ({
  fetchEntries: (feedId) => dispatch(fetchEntries(feedId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EntryIndex);
