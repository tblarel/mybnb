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

    render () {
        return(
            <div className="login-form_container"> 
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <h1>Welcome to myBnB!</h1>
                    <h3>Please {this.props.formType}</h3> {this.props.navLink}
                    <div className="login-form">
                        <br/>
                        <label>Email:
                            <input  type="text"
                                    value ={this.state.email}
                                    onChange={this.update('email')}
                                    className="login-input"
                            />
                        </label> 
                        <label>Password:
                            <input type="password"
                                value={this.state.password}
                                onChange={this.update('password')}
                                className="login-input"
                            />
                        </label>
                        <label>First Name:
                            <input type="text"
                                value={this.state.fname}
                                onChange={this.update('fname')}
                                className="login-input"
                            />
                        </label>
                        <label>Last Name:
                            <input type="text"
                                value={this.state.lname}
                                onChange={this.update('lname')}
                                className="login-input"
                            />
                        </label>
                        <br/>
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