<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@include file="header.jsp" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
*, *:after, *:before {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

ul, li {
	margin: 0;
	padding: 0;
}

body {
	background: #d83d3d;
}

.main-nav {
  width: 90%;
	max-width: 240px;
	margin: 0 auto;
  height: 100%;
  cursor: pointer;
}
.main-nav ul {
	position: absolute;
  width: 100%;
	top: 40%;
	margin: 0;
	padding: 0;
}
.main-nav li {
	list-style: none;
	float: left;
}
.main-nav a {
  display: block;
  height: 50px;
	margin: 10px;
	padding: 2px 25px;
	text-decoration: none;
	border-radius: 30px;
  line-height: 45px;
  color: #FFF;
	-webkit-transition: all 0.30s ease-in-out;
  	-moz-transition: all 0.30s ease-in-out;
  	-ms-transition: all 0.30s ease-in-out;
  	-o-transition: all 0.30s ease-in-out;
}

.main-nav li:nth-child(1) a {
	background: #d83d3d;
	border: 2px solid #fff;
}
.main-nav li:nth-child(1) a:hover {
	background: #fff;
	color: #d83d3d;
}

.main-nav li:nth-child(2) a {
  background: #9e2c2c;
	border: 2px solid #9e2c2c;
}
.main-nav li:nth-child(2) a:hover {
	background: #b13131;
	border: 2px solid #b13131;
}

.user-modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(127, 37, 37, 0.9);
  z-index: 3;
  overflow-y: auto;
  cursor: pointer;
  visibility: hidden;
  opacity: 0;
  -webkit-transition: opacity 0.3s 0, visibility 0 0.3s;
  -moz-transition: opacity 0.3s 0, visibility 0 0.3s;
  transition: opacity 0.3s 0, visibility 0 0.3s;
}
.user-modal.is-visible {
  visibility: visible;
  opacity: 1;
  -webkit-transition: opacity 0.3s 0, visibility 0 0;
  -moz-transition: opacity 0.3s 0, visibility 0 0;
  transition: opacity 0.3s 0, visibility 0 0;
}
.user-modal.is-visible .user-modal-container {
  -webkit-transform: translateY(0);
  -moz-transform: translateY(0);
  -ms-transform: translateY(0);
  -o-transform: translateY(0);
  transform: translateY(0);
}

.user-modal-container {
  position: relative;
  width: 90%;
  max-width: 600px;
  background: #FFF;
  margin: 3em auto 4em;
  cursor: auto;
  border-radius: 0.25em;
  -webkit-transform: translateY(-30px);
  -moz-transform: translateY(-30px);
  -ms-transform: translateY(-30px);
  -o-transform: translateY(-30px);
  transform: translateY(-30px);
  -webkit-transition-property: -webkit-transform;
  -moz-transition-property: -moz-transform;
  transition-property: transform;
  -webkit-transition-duration: 0.3s;
  -moz-transition-duration: 0.3s;
  transition-duration: 0.3s;
}
.user-modal-container .switcher:after {
  content: "";
  display: table;
  clear: both;
}
.user-modal-container .switcher li {
  width: 50%;
  float: left;
  text-align: center;
	list-style:none;
}
.user-modal-container .switcher li:first-child a {
  border-radius: .25em 0 0 0;
}
.user-modal-container .switcher li:last-child a {
  border-radius: 0 .25em 0 0;
}
.user-modal-container .switcher a {
  display: block;
  width: 100%;
  height: 50px;
  line-height: 50px;
  background: #d2d8d8;
  color: #809191;
	text-decoration: none;
}
.user-modal-container .switcher a.selected {
  background: #FFF;
  color: #505260;
}
@media only screen and (min-width: 600px) {
  .user-modal-container {
    margin: 4em auto;
  }
  .user-modal-container .switcher a {
    height: 70px;
    line-height: 70px;
  }
}

.form {
  padding: 1.4em;
}
.form .fieldset {
  position: relative;
  margin: 1.4em 0;
}
.form .fieldset:first-child {
  margin-top: 0;
}
.form .fieldset:last-child {
  margin-bottom: 0;
}
.form label {
  font-size: 14px;
  font-size: 0.875rem;
}
.form label.image-replace {
  /* replace text with an icon */
  display: inline-block;
  position: absolute;
  left: 15px;
  top: 50%;
  bottom: auto;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  height: 20px;
  width: 20px;
  overflow: hidden;
  text-indent: 100%;
  white-space: nowrap;
  color: transparent;
  text-shadow: none;
  background-repeat: no-repeat;
  background-position: 50% 0;
}
.form label.username {
  background-image: url("https://codyhouse.co/demo/login-signup-modal-window/img/cd-icon-username.svg");
}
.form label.email {
  background-image: url("https://codyhouse.co/demo/login-signup-modal-window/img/cd-icon-email.svg");
}
.form label.password {
  background-image: url("https://codyhouse.co/demo/login-signup-modal-window/img/cd-icon-password.svg");
}
.form input {
  margin: 0;
  padding: 0;
  border-radius: 0.25em;
}
.form input.full-width {
  width: 100%;
}
.form input.has-padding {
  padding: 12px 20px 12px 50px;
}
.form input.has-border {
  border: 1px solid #d2d8d8;
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  -o-appearance: none;
  appearance: none;
}
.form input.has-border:focus {
  border-color: #343642;
  box-shadow: 0 0 5px rgba(52, 54, 66, 0.1);
  outline: none;
}
.form input.has-error {
  border: 1px solid #d76666;
}
.form input[type=password] {
  /* space left for the HIDE button */
  padding-right: 65px;
}
.form input[type=submit] {
  padding: 16px 0;
  cursor: pointer;
  background: #F64747;
  color: #FFF;
  font-weight: bold;
  border: none;
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  -o-appearance: none;
  appearance: none;
	-webkit-transition: all 0.30s ease-in-out;
  	-moz-transition: all 0.30s ease-in-out;
  	-ms-transition: all 0.30s ease-in-out;
  	-o-transition: all 0.30s ease-in-out;
}
.form input[type=submit]:hover {
	background: #d83d3d;
}
.no-touch .form input[type=submit]:hover, .no-touch .form input[type=submit]:focus {
  background: #d83d3d;
  outline: none;
}
.form .hide-password {
  display: inline-block;
  position: absolute;
	text-decoration: none;
  right: 0;
  top: 0;
  padding: 6px 15px;
  border-left: 1px solid #d2d8d8;
  top: 50%;
  bottom: auto;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  font-size: 14px;
  font-size: 0.875rem;
  color: #343642;
}
.form .error-message {
  display: inline-block;
  position: absolute;
  left: -5px;
  bottom: -35px;
  background: rgba(215, 102, 102, 0.9);
  padding: .8em;
  z-index: 2;
  color: #FFF;
  font-size: 13px;
  font-size: 0.8125rem;
  border-radius: 0.25em;
  /* prevent click and touch events */
  pointer-events: none;
  visibility: hidden;
  opacity: 0;
  -webkit-transition: opacity 0.2s 0, visibility 0 0.2s;
  -moz-transition: opacity 0.2s 0, visibility 0 0.2s;
  transition: opacity 0.2s 0, visibility 0 0.2s;
}
.form .error-message::after {
  /* triangle */
  content: '';
  position: absolute;
  left: 22px;
  bottom: 100%;
  height: 0;
  width: 0;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-bottom: 8px solid rgba(215, 102, 102, 0.9);
}
.form .error-message.is-visible {
  opacity: 1;
  visibility: visible;
  -webkit-transition: opacity 0.2s 0, visibility 0 0;
  -moz-transition: opacity 0.2s 0, visibility 0 0;
  transition: opacity 0.2s 0, visibility 0 0;
}
@media only screen and (min-width: 600px) {
  .form {
    padding: 2em;
  }
  .form .fieldset {
    margin: 2em 0;
  }
  .form .fieldset:first-child {
    margin-top: 0;
  }
  .form .fieldset:last-child {
    margin-bottom: 0;
  }
  .form input.has-padding {
    padding: 16px 20px 16px 50px;
  }
  .form input[type=submit] {
    padding: 16px 0;
  }
}

.form-message {
  padding: 1.4em 1.4em 0;
  font-size: 14px;
  font-size: 0.875rem;
  line-height: 1.4;
  text-align: center;
}
@media only screen and (min-width: 600px) {
  .form-message {
    padding: 2em 2em 0;
  }
}

.form-bottom-message {
  position: absolute;
  width: 100%;
  left: 0;
  bottom: -40px;
  text-align: center;
  font-size: 14px;
  font-size: 0.875rem;
}
.form-bottom-message a {
  color: #FFF;
  text-decoration: none;
	border-bottom: 1px solid rgba(255, 255, 255, .0);
	padding: 0 0 0 2px;
	-webkit-transition: all 0.30s ease-in-out;
  	-moz-transition: all 0.30s ease-in-out;
  	-ms-transition: all 0.30s ease-in-out;
  	-o-transition: all 0.30s ease-in-out;
}
.form-bottom-message a:hover {
	animation: borderslide-3px .5s;
	border-bottom: 1px solid rgba(255, 255, 255, 1);
	padding-bottom: 3px;
}

@keyframes borderslide-3px {
  0% {
		padding-bottom: 1px;
  }
  50% {
		padding-bottom: 3px;
  }
}

@keyframes borderslide-2px {
  0% {
		padding-bottom: 1px;
  }
  50% {
		padding-bottom: 2px;
  }
}

.close-form {
  /* form X button on top right */
  display: block;
  position: absolute;
  width: 40px;
  height: 40px;
  right: 0;
  top: -40px;
  background: url("../img/icon-close.svg") no-repeat center center;
  text-indent: 100%;
  white-space: nowrap;
  overflow: hidden;
}
@media only screen and (min-width: 1170px) {
  .close-form {
    display: none;
  }
}

.accept-terms {
	color: #F64747;
	text-decoration: none;
	padding: 0 1px 1px 2px;
	border-bottom: 1px solid rgba(246, 71, 71, .0);
	-webkit-transition: all 0.30s ease-in-out;
  	-moz-transition: all 0.30s ease-in-out;
  	-ms-transition: all 0.30s ease-in-out;
  	-o-transition: all 0.30s ease-in-out;
}

.accept-terms:hover {
	animation: borderslide-2px .5s;
	padding-bottom: 2px;
	border-bottom: 1px solid rgba(246, 71, 71, 1);
}

#login, #signup, #reset-password {
  display: none;
}

#login.is-selected, #signup.is-selected, #reset-password.is-selected {
  display: block;
}
</style>
<body>



<nav class="main-nav">
	<ul>
		<li><a class="signin" data-toggle="modal" data-target="#myModal">Sign in</a></li>
		<li><a class="signup"  data-toggle="modal" data-target="#myNewModal" >Sign up</a></li>
	</ul>
</nav>

<div id="myModal" class="modal fade" role="dialog">
	<div class="user-modal-container">
		<ul class="switcher">
			<li><a href="">Sign in</a></li>
			<li><a data-toggle="modal" data-target="#myNewModal">New account</a></li>
		</ul>
	
	
			<form class="form" action="SignIn" method="POST">
				<p class="fieldset">
					<label class="image-replace email" for="signin-email">E-mail</label>
					<input class="full-width has-padding has-border" id="signin-email" type="email" placeholder="E-mail">
					<span class="error-message">An account with this email address does not exist!</span>
				</p>

				<p class="fieldset">
					<label class="image-replace password" for="signin-password">Password</label>
					<input class="full-width has-padding has-border" id="signin-password" type="password" placeholder="Password">
					<a href="#0" class="hide-password">Show</a>
					<span class="error-message">Wrong password! Try again.</span>
				</p>

				<p class="fieldset">
					<input type="checkbox" id="remember-me" checked>
					<label for="remember-me">Remember me</label>
				</p>

			
					<input class="full-width" type="submit" value="Login">
			
				
				 <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
	
			</form>

			<p class="form-bottom-message"><a href="#0">Forgot your password?</a></p>
			<!-- <a href="#0" class="close-form">Close</a> -->
		</div>
</div>

<div id="myNewModal" class="modal fade" role="dialog">
	<div class="user-modal-container">
		
			<form class="form">
				<p class="fieldset">
					<label class="image-replace username" for="signup-username">Username</label>
					<input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
					<span class="error-message">Your username can only contain numeric and alphabetic symbols!</span>
				</p>

				<p class="fieldset">
					<label class="image-replace email" for="signup-email">E-mail</label>
					<input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail">
					<span class="error-message">Enter a valid email address!</span>
				</p>

				<p class="fieldset">
					<label class="image-replace password" for="signup-password">Password</label>
					<input class="full-width has-padding has-border" id="signup-password" type="password" placeholder="Password">
					<a href="#0" class="hide-password">Show</a>
					<span class="error-message">Your password has to be at least 6 characters long!</span>
				</p>

				<p class="fieldset">
					<input type="checkbox" id="accept-terms">
					<label for="accept-terms">I agree to the <a class="accept-terms" href="#0">Terms</a></label>
				</p>

				<p class="fieldset">
					<input class="full-width has-padding" type="submit" value="Create account">
				</p>
			</form>

			 <a href="#0" class="cd-close-form">Close</a>
		
		<div id="reset-password">
			<p class="form-message">Lost your password? Please enter your email address.</br> You will receive a link to create a new password.</p>

			<form class="form">
				<p class="fieldset">
					<label class="image-replace email" for="reset-email">E-mail</label>
					<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
					<span class="error-message">An account with this email does not exist!</span>
				</p>

				<p class="fieldset">
					<input class="full-width has-padding" type="submit" value="Reset password">
				</p>
			</form>

			<p class="form-bottom-message"><a href="#0">Back to log-in</a></p>
		</div>
		<a href="#0" class="close-form">Close</a>
	</div>
</div>


</body>
</html>