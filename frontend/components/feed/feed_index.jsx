import React from 'react';

import values from 'lodash/values';

import { FeedIndexItem } from './feed_index_item';
import LoadingIcon from '../shared/loading_icon';

import { selectAllFeeds } from '../../reducers/selectors/feed_selector';

class FeedIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    let categoryId = this.props.match.params.categoryId;
    this.props.requestFeeds(categoryId);
  }

  render() {
    const { loading, feeds} = this.props;

    if (loading) { return <LoadingIcon />; }

    return (
      <section className="feed-index">
        <div>
          {feeds.map(feed => <FeedIndexItem key={feed.id} feed={feed} />)}
        </div>
      </section>
    );
  }
}

export default FeedIndex;
