import { connect } from 'react-redux';

import CategoryFeedIndex from './category_feed_index';
import { selectAllFeeds } from '../../reducers/selectors/category_selector';

const mapStateToProps = (state) => ({
    feeds: state.entities.feeds
});

const mapDispatchToProps = (dispatch) => ({
  requestCategoryFeeds: (categoryId) => dispatch(fetchCategoryFeeds(categoryId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CategoryFeedIndex);
