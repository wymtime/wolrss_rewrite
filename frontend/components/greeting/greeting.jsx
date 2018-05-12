import React from 'react';


import { Route, Link, NavLink } from 'react-router-dom';

const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <nav className="login-signup navbar">
      <Link className="navbar-link" to="/">WOLRSS</Link>
      <Link className="navbar-link navbar-session-link" to="/login">Login</Link>
      <Link className="navbar-link navbar-session-link" to="/signup">Sign up</Link>
    </nav>
  );
  const personalGreeting = () => (
    <hgroup className="header-group">
      <h2 className="header-name">Hi, {currentUser.email}!</h2>
      <button className="header-button" onClick={logout}>Log Out</button>
    </hgroup>
  );

  return currentUser ? personalGreeting() : sessionLinks();
}

export default Greeting;
