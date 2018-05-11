import React from 'react';

import values from 'lodash/values';

import { CategoryFeedIndexItem } from './category_feed_index_item';
import LoadingIcon from '../shared/loading_icon';

import { selectAllCategoryFeeds } from '../../reducers/selectors/category_selector';

class CategoryFeedIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestCategories();
  }

  render() {
    const { loading, categories} = this.props;
    const categoryId = this.props.match.params.categoryId;

    if (loading) { return <LoadingIcon />; }

    let feeds = categories[categoryId].feeds;
    return (
      <section className="category-feed-index">
        <div>
          {feeds.map(feed => <CategoryFeedIndexItem key={feed.id} feed={feed} />)}
        </div>
      </section>
    );
  }
}

export default CategoryFeedIndex;
