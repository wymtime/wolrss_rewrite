import { connect } from 'react-redux';

import CategoryFeedIndex from './category_feed_index';
import { fetchCategories } from '../../actions/category_actions';
import { selectAllCategories } from '../../reducers/selectors/category_selector';

const mapStateToProps = (state) => ({
  categories: state.entities.categories,
  loading: state.loading.indexLoading
});

const mapDispatchToProps = (dispatch) => ({
  requestCategories: () => dispatch(fetchCategories())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CategoryFeedIndex);
