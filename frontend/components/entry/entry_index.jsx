import React from 'react';

import LoadingIcon from '../shared/loading_icon';
import { EntryIndexItem } from './entry_index_item';

class EntryIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    let feedId = this.props.match.params.feedId;
    this.props.fetchEntries(feedId);
  }

  render() {
    let { loading, entries } = this.props;

    if (loading) {
      return <LoadingIcon />
    }

    return(
      <div className='entry-index'>
        {entries.map(entry => <EntryIndexItem key={entry.id} entry={entry} />)}
      </div>
    )
  }
}

export default EntryIndex;
