import React from 'react';
import ReactDOM from 'react-dom';

import Root from './components/root';
import configureStore from './store/store';

import { signup, login, logout } from './actions/session_actions';

document.addEventListener('DOMContentLoaded', () => {
  let store;

  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      },
      session: { id: window.currentUser.id }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  // window.login = login;
  // window.logout = logout;
  // window.signup = signup;
  //
  // window.getState = store.getState;
  // window.dispatch = store.dispatch;

  // store.dispatch(login({"email": "terd@gmail.com", "password":"bucket6969"}));

  let root = document.getElementById('root');
  ReactDOM.render(<Root store={ store } />, root);
});
