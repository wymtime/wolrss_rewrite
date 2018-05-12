import React from 'react';

import { connect } from 'react-redux';

import { signup } from '../../actions/session_actions';

import SessionForm from './session_form';

import { Link } from 'react-router-dom';

const mapStateToProps = (state) => ({
  formType: 'signup',
  errors: state.errors,
  navLink: <Link to="/login">login</Link>,
});

const mapDispatchToProps = (dispatch) => ({
  processForm: (user) => dispatch(signup(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
