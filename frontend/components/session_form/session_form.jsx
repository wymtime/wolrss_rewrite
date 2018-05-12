import React from 'react';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      email: '',
      password: ''
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    let user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  renderErrors() {
    return(
     <ul>
       {this.props.errors.map((error, i) => (
         <li key={`error-${i}`}>
           {error}
         </li>
       ))}
     </ul>
    );
 }

  update(field) {
    return (e) => this.setState({
      [field]: e.currentTarget.value
    });
  }

  render() {
    return (
      <div className="session-form-container">
        <form onSubmit={this.handleSubmit} className="session-form">
          <h6 className="session-header">Welcome to Wolrss!</h6>
          <h6 className="session-header">Please {this.props.formType} or {this.props.navLink} instead</h6>
          {/* {this.renderErrors()} */}
          <div className="session-form-div">
            <br/>
            <label>Email:</label>
              <input type="text"
                value={this.state.email}
                onChange={this.update('email')}
                className="session-input"
              />
            <br/>
            <label>Password:</label>
              <input type="password"
                value={this.state.password}
                onChange={this.update('password')}
                className="session-input"
              />
            <br/>
            <input className="session-submit" type="submit" value={this.props.formType} />
          </div>
        </form>
      </div>
    );
  }
}

export default SessionForm;
