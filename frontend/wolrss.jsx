import React from 'react';
import ReactDOM from 'react-dom';

import Root from './components/root';
import configureStore from './store/store';

import { signup, login, logout } from './actions/session_actions';


import { fetchCategories } from './actions/category_actions';

import { allCategories } from './reducers/selectors/category_selector';

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

  let root = document.getElementById('root');
  ReactDOM.render(<Root store={ store } />, root);
});
