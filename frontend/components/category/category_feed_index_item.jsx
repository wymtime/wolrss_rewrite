import React from 'react';
import { Link } from 'react-router-dom';

export const CategoryFeedIndexItem = ({ feed }) => (
  <div className='category-feed-index-item'>
    <Link to='/feeds/${feed.id}'>
      <span>{feed.title}</span>
      <img src={feed.image} />
    </Link>
  </div>
);
