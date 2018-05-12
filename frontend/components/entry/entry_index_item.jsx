import React from 'react';

export const EntryIndexItem = ({ entry, className }) => (
  <div className={`entry-index-item columns ${className}`}>
    <a href={entry.url}>
      <span className='entry-title'>{ entry.title }</span>
      <img className='entry-image' src={ entry.image } />
    </a>
    <p className='entry-summary'>{ entry.summary }</p>
  </div>
);
