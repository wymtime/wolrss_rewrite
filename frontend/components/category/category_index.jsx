import React from 'react';

import { CategoryIndexItem } from './category_index_item';
import LoadingIcon from '../shared/loading_icon';

class CategoryIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestCategories();
  }

  render() {
    const { categories, loading } = this.props;

    if (loading) { return <LoadingIcon />; }

    return (
      <section className="category-index">
        <div>
          {categories.map(category => <CategoryIndexItem key={category.id} category={category} />)}
        </div>
      </section>
    );
  }
}

export default CategoryIndex;
