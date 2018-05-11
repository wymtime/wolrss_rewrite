import React from 'react';

export const EntryIndexItem = ({ entry }) => (
  <div className='entry-index-item'>
    <a href={entry.url}>
      <h4 className='entry-title'>{ entry.title }</h4>
      <img className='entry-image' src={ entry.image } />
    </a>
    <p className='entry-summary'>{ entry.summary }</p>
  </div>
);
