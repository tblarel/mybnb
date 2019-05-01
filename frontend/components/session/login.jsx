import React from 'react';
import { withRouter } from 'react-router-dom';


class Login extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            password: '',
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.update = this.update.bind(this);
        this.renderErrors = this.renderErrors.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        const formUser = Object.assign({}, this.state);
        this.props.processForm(formUser);
        this.props.history.push('/');

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
    };

    render() {
        return (
            <div className="login-form-container">
                {this.renderErrors()}
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <h1>Welcome to myBnB!</h1>
                    <h3>Please {this.props.formType}</h3> {this.props.navLink}
                    <div className="login-form">
                        <br />
                        <label><p>Email:</p>
                            <input type="text"
                                value={this.state.email}
                                onChange={this.update('email')}
                                className="login-input"
                            />
                        </label>
                        <label><p>Password:</p>
                            <input type="password"
                                value={this.state.password}
                                onChange={this.update('password')}
                                className="login-input"
                            />
                        </label>
                        <input className="session-submit"
                            type="submit"
                            value={this.props.formType}
                        />
                    </div>
                </form>
            </div>
        );
    }
};

export default withRouter(Login);