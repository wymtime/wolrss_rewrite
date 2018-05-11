import React from 'react';
import { Link } from 'react-router-dom';

export const FeedIndexItem = ({ feed }) => (
  <div className='feed-index-item'>
    <Link to={`/feed/${feed.id}`}>
      <span>{feed.title}</span>
      <img src={feed.image} />
    </Link>
  </div>
);
