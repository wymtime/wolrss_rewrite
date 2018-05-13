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

  createSection(categories) {
    let counter = 0;
    let categorySections = [];
    let sectionIndex = -1;
    for (let i = 0; i < categories.length; i++) {
      if (counter % 4 === 0) {
        categorySections.push([]);
        sectionIndex += 1;
      }
      categorySections[sectionIndex].push(categories[i]);
      counter += 1;
    }
    return (
      <section>
        {categorySections.map(categorySection => this.createRow(categorySection))}
      </section>
    );
  }

  createRow(categories) {
    let className;
    if (categories.length === 4) className = 'three';
    if (categories.length === 3) className = 'four';
    if (categories.length === 2) className = 'six';
    if (categories.length === 1)  className = 'twelve';
    return (
      <div className='row category-index-row'>
        {categories.map(category => <CategoryIndexItem className={className} key={category.id} category={category} />)}
      </div>
    );
  }

  render() {
    const { categories, loading } = this.props;

    if (loading) { return <LoadingIcon />; }

    return (
      <section className="category-index">
        {this.createSection(categories)}
        {/* <div>
          {categories.map(category => <CategoryIndexItem key={category.id} category={category} />)}
        </div> */}
      </section>
    );
  }
}

export default CategoryIndex;
