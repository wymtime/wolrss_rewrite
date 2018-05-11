import React from 'react';
import GreetingContainer from './components/greeting/greeting_container';
import { Route, Link, Switch } from 'react-router-dom';

import LoginFormContainer from './components/session_form/login_form_container';
import SignupFormContainer from './components/session_form/signup_form_container';

import CategoryIndexContainer from './components/category/category_index_container';
import FeedIndexContainer from './components/feed/feed_index_container';

const App = ({currentUser}) => {
  let sessionHeader = () => (
    <div>
      <header>
        <h1><Link to="/">WOLRSS</Link></h1>
        <GreetingContainer />
      </header>
      <Switch>
        <Route path="/login" component={LoginFormContainer} />
        <Route path="/signup" component={SignupFormContainer} />
        <Route exact path="/" component={ CategoryIndexContainer } />
        <Route path="/category/:categoryId" component={ FeedIndexContainer } />
      </Switch>
    </div>
  );

  let sessionlessHeader = () => (
    <div>
      <header>
        <h1><Link to="/">WOLRSS</Link></h1>
        <GreetingContainer />
      </header>
      <Switch>
        <Route exact path="/" component={ CategoryIndexContainer } />
        <Route path="/category/:categoryId" component={ FeedIndexContainer } />
      </Switch>
    </div>
  );

  return currentUser ? sessionlessHeader() : sessionHeader();
}

export default App;
