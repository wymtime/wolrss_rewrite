import React from 'react';

import { Link } from 'react-router-dom';

export const CategoryIndexItem = ({ category }) => (
  <div className='category-index-item'>
    <Link to={`/category/${category.id}`}>
      <span>{category.title}</span>
    </Link>
  </div>
);
