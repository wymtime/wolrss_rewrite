import React from 'react';

import { Link } from 'react-router-dom';

export const CategoryIndexItem = ({ category }) => (
  <div className='category-index-item columns three'>
    <span className='category-index-title'>{category.title}</span>
    <div className='category-feed-images'>{category.feeds.slice(0,4).map(feed => <img src={feed.image}/>)}</div>
    <Link to={`/category/${category.id}`}></Link>
  </div>
);
