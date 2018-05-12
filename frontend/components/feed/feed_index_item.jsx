import React from 'react';
import { Link } from 'react-router-dom';

export const FeedIndexItem = ({ feed, className }) => (
  <div style={{backgroundImage: `url(${feed.image})`}} className={`${className} columns feed-index-item`}>
    <Link to={`/feed/${feed.id}`}>
      <span className='feed-index-title'>{feed.title}</span>
      {/* <img src={feed.image} /> */}
    </Link>
  </div>
);
