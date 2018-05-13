import React from 'react';
import GreetingContainer from './components/greeting/greeting_container';
import { Route, Link, Switch } from 'react-router-dom';

import LoginFormContainer from './components/session_form/login_form_container';
import SignupFormContainer from './components/session_form/signup_form_container';

import CategoryIndexContainer from './components/category/category_index_container';
import FeedIndexContainer from './components/feed/feed_index_container';
import EntryIndexContainer from './components/entry/entry_index_container';

import { AuthRoute } from './util/route_util';

const App = ({currentUser}) => {
  let sessionHeader = () => (
    <div>
      <header>
        <GreetingContainer />
      </header>
      <Switch>
        <AuthRoute path="/login" component={LoginFormContainer} />
        <AuthRoute path="/signup" component={SignupFormContainer} />
        <Route exact path="/" component={ CategoryIndexContainer } />
        <Route path="/category/:categoryId" component={ FeedIndexContainer } />
        <Route path="/feed/:feedId" component={ EntryIndexContainer } />
      </Switch>
    </div>
  );

  let sessionlessHeader = () => (
    <div>
      <header>
        <GreetingContainer />
      </header>
      <Switch>
        <Route exact path="/" component={ CategoryIndexContainer } />
        <Route path="/category/:categoryId" component={ FeedIndexContainer } />
        <Route path="/feed/:feedId" component={ EntryIndexContainer } />
      </Switch>
    </div>
  );

  return currentUser ? sessionlessHeader() : sessionHeader();
}

export default App;
