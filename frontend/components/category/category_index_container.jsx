import { connect } from 'react-redux';

import CategoryIndex from './category_index';
import { fetchCategories } from '../../actions/category_actions';
import { selectAllCategories } from '../../reducers/selectors/category_selector';

const mapStateToProps = (state) => ({
  categories: selectAllCategories(state),
  loading: state.loading.indexLoading
});

const mapDispatchToProps = (dispatch) => ({
  requestCategories: () => dispatch(fetchCategories())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CategoryIndex);
