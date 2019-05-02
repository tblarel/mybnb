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
        this.renderErrors = this.renderErrors.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleDemoLogin(e) {
        e.preventDefault();
        const demoUser = {
            email: 'email',
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

    renderErrors() {      
        // debugger  
        return(
            null
            // <ul>
            //     {this.props.errors.map((error, i) => (
            //         <li key={`error-${i}`}>
            //             {error}
            //         </li>å
            //     ))}
            // </ul>
        );
    };

    componentDidMount() {
        let ele = document.getElementsByClassName("modal-child");
        setTimeout(function () { ele[0].className += " visible"; }, 0);
    }

    render() {
        
        return (
            <div className="login-form-container">                            
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <div id="logo-header"></div>
                    {this.renderErrors()}
                    {/* <h3>{this.props.formType}</h3> */}
                    <div className="login-form">
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