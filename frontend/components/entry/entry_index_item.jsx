import React from 'react';
import moment from 'moment';

export const EntryIndexItem = ({ entry, className }) => (
  <div className={`entry-index-item columns ${className}`}>
    <a href={entry.url}>
      {/* <span className='entry-title'>{ entry.title }</span> */}
      <img className='entry-image' src={ entry.image } />
      <div className='entry-title'>{ entry.title }</div>
      <p className='entry-summary'>{ entry.summary }</p>
      <span className='entry-date'>{entry.published_at ? moment(entry.published_at).fromNow() : moment(entry.created_at).fromNow()}</span>
    </a>
  </div>
);
