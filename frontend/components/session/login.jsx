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
        this.handleDemoLogin = this.handleDemoLogin.bind(this);
        this.update = this.update.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleDemoLogin(e) {
        e.preventDefault();
        const demoUser = {
            email: 'email@email.com',
            password: 'password'
        };
        this.props.processForm(demoUser)
            .then(() => this.props.closeModal());
    }

    handleSubmit(e) {
        e.preventDefault();
        const formUser = Object.assign({}, this.state);
        this.props.processForm(formUser)
            .then(() => this.props.closeModal());

    }

    componentDidMount() {
        let modalEle = document.getElementsByClassName("modal-child");
        let backgroundEle = document.getElementsByClassName("modal-background");

        setTimeout(function () {
            console.log(`found  ${modalEle}`)    
            modalEle[0].className += " visible";
        }, 0);
        setTimeout(function () {
            console.log(`found  ${backgroundEle}`);
            backgroundEle[0].className += " visible"; 
        }, 0);
    }

    render() {
        
        let emailError;
        if ((this.props.errors != undefined && this.props.errors.email != undefined) ) {
            emailError = <p className="error"> {this.props.errors.email}</p>;
        }

        let passwordError;
        if ((this.props.errors != undefined && this.props.errors.password != undefined) ) {
            passwordError = <p className="error"> {this.props.errors.password}</p>;
        }

        return (
            <div className="login-form-container">                            
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <div id="logo-header"></div>
                    <div className="login-form">
                        <label><p>Email:</p>
                            <input type="email"
                                value={this.state.email}
                                onChange={this.update('email')}
                                className="login-input"
                            />
                        </label>
                        {emailError}
                        <label><p>Password:</p>
                            <input type="password"
                                value={this.state.password}
                                onChange={this.update('password')}
                                className="login-input"
                            />
                        </label>
                        {passwordError}
                        <input className="session-submit"
                            type="submit"
                            value={this.props.formType}
                        />
                    </div>
                        <input className="session-submit demo"
                            type="submit"
                            value="Demo User"
                            onClick={this.handleDemoLogin}
                        />
                    {this.props.otherForm} 
                </form>
            </div>
        );
    }
};

export default withRouter(Login);