import React from 'react';
import { withRouter } from 'react-router-dom';


class Signup extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            password: '',
            fname: '',
            lname: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.update = this.update.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        const formUser = Object.assign({}, this.state);
        this.props.processForm(formUser)
            .then(() => this.props.history.push('/'));
        // this.props.signupUser(formUser)
    }


    renderErrors() {
        
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    };

    render () {
        return(
            <div className="login-form_container">
                {this.renderErrors()} 
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <h1>Welcome to myBnB!</h1>
                    <h3>Please {this.props.formType}</h3> {this.props.navLink}
                    <div className="login-form">
                        
                        <label><p>Email:</p>
                            <input  type="text"
                                    value ={this.state.email}
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
                        <label><p>First Name:</p>
                            <input type="text"
                                value={this.state.fname}
                                onChange={this.update('fname')}
                                className="login-input"
                            />
                        </label>
                        <label><p>Last Name:</p>
                            <input type="text"
                                value={this.state.lname}
                                onChange={this.update('lname')}
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

export default withRouter(Signup);