import React from 'react';


import { Route, Link, NavLink } from 'react-router-dom';

const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <nav className="login-signup navbar">
      <Link className="navbar-link navbar-home" to="/">WOLRSS</Link>
      <Link className="navbar-link navbar-session-link" to="/login">Login</Link>
      <Link className="navbar-link navbar-session-link" to="/signup">Sign up</Link>
    </nav>
  );
  const personalGreeting = () => (
    <nav className="login-signup navbar">
      <Link className="navbar-link navbar-home" to="/">WOLRSS</Link>
      <span className="header-name navbar-link">Hi, {currentUser.email}!</span>
      <span className="navbar-link logout-button" onClick={logout}>Log Out</span>
    </nav>
  );

  return currentUser ? personalGreeting() : sessionLinks();
}

export default Greeting;
