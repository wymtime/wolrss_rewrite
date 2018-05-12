import React from 'react';
import cloneDeep from 'lodash/cloneDeep';

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

  createSection(entries) {
    let orderClassNames = {
      1: ["twelve"],
      2: ["eight", "four"],
      3: ["four", "four", "four"]
    }

    let orderKeys = [1,2,3];

    let entriesCopy = cloneDeep(entries);

    //Math.floor(Math.random() * Math.floor(2));

    let entrySections = [];
    let counter = 0;

    while (entriesCopy.length - orderKeys[counter % 3] > 0) {
      let entrySection = [];
      for (let i = 0; i < orderKeys[counter % 3]; i++) {
        entrySection.push(entriesCopy.shift());
      }
      entrySections.push(entrySection);
      counter += 1;
    }

    if (entriesCopy.length > 0) entrySections.push(entriesCopy);

    // let counter = 0;
    // let entrySections = [];
    // let sectionIndex = -1;
    // for (let i = 0; i < entries.length; i++) {
    //   if (counter % 3 === 0) {
    //     entrySections.push([]);
    //     sectionIndex += 1;
    //   }
    //   entrySections[sectionIndex].push(entries[i]);
    //   counter += 1;
    // }
    return (
      <section>
        {entrySections.map(entrySection => this.createRow(entrySection, orderClassNames[entrySection.length]))}
      </section>
    );
  }

  createRow(entries, classNames) {
    let className;
    return (
      <div className='row'>
        {entries.map((entry, index) => <EntryIndexItem key={entry.id} entry={entry} className={classNames[index]}/>)}
      </div>
    );
  }

  render() {
    let { loading, entries } = this.props;

    entries = entries.sort((a, b) => ( new Date(b.published_at) - new Date(a.published_at)));

    if (loading) {
      return <LoadingIcon />
    }

    return(
      <div className='entry-index'>
        { this.createSection(entries)}
      </div>
    )
  }
}

export default EntryIndex;
