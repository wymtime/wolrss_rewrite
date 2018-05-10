import React from 'react';

import { CategoryFeedIndexItem } from './category_feed_index_item';
import LoadingIcon from '../shared/loading_icon';

class CategoryFeedIndex extends React.Component {
  constructor(props) {
    super(props);
    //let { categories } = props;
    //let category = categories[this.props.match.params.categoryId];

    this.state = {
      feeds: {},
      categoryId: this.props.match.params.categoryId
    };

  }

  componentDidMount() {
    this.props.requestCategoryFeeds(this.state.categoryId);
  }

  render() {
    const { feeds, loading } = this.props;

    if (loading) { return <LoadingIcon />; }

    return (<section className="category-feed-index">
      <div>
        {this.state.feeds.map(feed => <CategoryFeedIndexItem key={feed.id} feed={feed} />)}
      </div>
    </section>)
  }
}

export default CategoryFeedIndex;
