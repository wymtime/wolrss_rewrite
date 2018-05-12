import React from 'react';

import values from 'lodash/values';

import { FeedIndexItem } from './feed_index_item';
import LoadingIcon from '../shared/loading_icon';

import { selectAllFeeds } from '../../reducers/selectors/feed_selector';

class FeedIndex extends React.Component {
  constructor(props) {
    super(props);

    // this.createSection = this.createSection.bind(this);
    // this.createRow = this.createRow.bind(this);
    // this.createFeedIndexItem = this.createFeedIndexItem.bind(this);
  }

  componentDidMount() {
    let categoryId = this.props.match.params.categoryId;
    this.props.requestFeeds(categoryId);
  }

  createSection(feeds) {
    let counter = 0;
    let feedSections = [];
    let sectionIndex = -1;
    for (let i = 0; i < feeds.length; i++) {
      if (counter % 4 === 0) {
        feedSections.push([]);
        sectionIndex += 1;
      }
      feedSections[sectionIndex].push(feeds[i]);
      counter += 1;
    }
    return (
      <section>
        {feedSections.map(feedSection => this.createRow(feedSection))}
      </section>
    );
  }

  createRow(feeds) {
    let className;
    if (feeds.length === 4) className = 'three';
    if (feeds.length === 3) className = 'four';
    if (feeds.length === 2) className = 'six';
    if (feeds.length === 1)  className = 'twelve';
    return (
      <div className='row'>
        {feeds.map(feed => <FeedIndexItem className={className} key={feed.id} feed={feed} />)}
      </div>
    );
  }

  render() {
    const { loading, feeds} = this.props;

    if (loading) { return <LoadingIcon />; }

    return (
      <div className='feed-index'>
      { this.createSection(feeds)}
      </div>
    )
  }
}

export default FeedIndex;
