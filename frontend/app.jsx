import React from 'react';
import GreetingContainer from './components/greeting/greeting_container';

import { Link } from 'react-router-dom';

const App = () => (
  <div>
    <header>
      <h1><Link to="/">WOLRSS</Link></h1>
      <GreetingContainer />
    </header>
  </div>
);

export default App;
