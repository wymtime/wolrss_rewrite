import React from 'react';
import GreetingContainer from './components/greeting/greeting_container';
import { Route, Link } from 'react-router-dom';

import LoginFormContainer from './components/session_form/login_form_container';
import SignupFormContainer from './components/session_form/signup_form_container';

const App = ({currentUser}) => {
  let sessionHeader = () => (
    <div>
      <header>
        <h1><Link to="/">WOLRSS</Link></h1>
        <GreetingContainer />
      </header>

      <Route path="/login" component={LoginFormContainer} />
      <Route path="/signup" component={SignupFormContainer} />
    </div>
  );

  let sessionlessHeader = () => (
    <div>
      <header>
        <h1><Link to="/">WOLRSS</Link></h1>
        <GreetingContainer />
      </header>
    </div>
  );

  return currentUser ? sessionlessHeader() : sessionHeader();
}

export default App;
