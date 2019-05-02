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


    render () {

        let emailError;
        if( (this.props.errors.errors != undefined) && Object.keys(this.props.errors.errors).includes("email")) {
            emailError = <p className="error">Email {this.props.errors.errors["email"]}</p>;
        }

        let passwordError;
        if ((this.props.errors.errors != undefined) && Object.keys(this.props.errors.errors).includes("password")) {
            passwordError = <p className="error">Password {this.props.errors.errors["password"]}</p>;
        }
        
        let fnameError;
        if ((this.props.errors.errors != undefined) && Object.keys(this.props.errors.errors).includes("fname")) {
            fnameError = <p className="error">First Name {this.props.errors.errors["fname"]}</p>;
        }

        let lnameError;
        if ((this.props.errors.errors != undefined) && Object.keys(this.props.errors.errors).includes("lname")) {
            lnameError = <p className="error">Last Name {this.props.errors.errors["lname"]}</p>;
        }
    
        return(
            <div className="login-form_container">                
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <div id="logo-header"></div>
                    <div className="login-form">                        
                        <label><p>Email:</p>
                            <input  type="text"
                                    value ={this.state.email}
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
                        <label><p>First Name:</p>
                            <input type="text"
                                value={this.state.fname}
                                onChange={this.update('fname')}
                                className="login-input"
                            />
                        </label>
                        {fnameError}
                        <label><p>Last Name:</p>
                            <input type="text"
                                value={this.state.lname}
                                onChange={this.update('lname')}
                                className="login-input"
                            />
                        </label>
                        {lnameError}
                        <input className="session-submit" 
                                type="submit" 
                                value={this.props.formType} 
                        />
                    </div>
                    {this.props.otherForm} 
                </form>
            </div>
        );
    }
};

export default withRouter(Signup);