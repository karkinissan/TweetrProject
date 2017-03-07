<html>
<head>
    <title>Welcome page</title>
    <meta name="layout" content="loginTemplate">

</head>

<body>

<div class="login-html">
<div  class="myStyle"><h1>Welcome to Tweetr!</h1></div>
<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>

<div class="login-form">
<g:form controller="user">
    <div class="sign-in-htm">
        <div class="group">
            <label for="userName" class="label">Username</label>
            <g:textField name="userName" class="input"/>
        </div>

        <div class="group">
            <label for="password" class="label">Password</label>
            %{--<input id="pass" type="password" class="input" data-type="password">--}%
            <g:passwordField name="password" class="input"/>
        </div>
        %{--  <div class="group">
              <g:checkBox name="check" class="check"/>
              --}%%{--<input id="check" type="checkbox" class="check" checked>--}%%{--
              <label for="check"><span class="icon"></span> Keep me Signed in</label>
          </div>--}%
        <div class="group">
            %{--<input type="submit" class="button" value="Sign In">--}%

            <g:actionSubmit value="Login" action="login" class="button"/>
        </div>

        <div class="hr"></div>
        <div class="foot-lnk msg">
        ${message}
        </div>
        <br>
    <div class="foot-lnk">
        <a href="#forgot">%{--Forgot Password?--}%</a>
    </div>
    </div>
</g:form>
<g:form controller="user">
    <div class="sign-up-htm">
        <div class="group">
            <label for="userName" class="label">Username</label>
            %{--<input id="user" type="text" class="input">--}%
            <g:textField name="userName" class="input"/>
        </div>

        <div class="group">
            <label for="password" class="label">Password</label>
            %{--<input id="pass" type="password" class="input" data-type="password">--}%
            <g:passwordField name="password" class="input"/>
        </div>
        %{--<div class="group">
            <label for="pass" class="label">Repeat Password</label>
            --}%%{--<input id="pass" type="password" class="input" data-type="password">--}%%{--
            <g:passwordField name="password" class="input"/>
        </div>
        <div class="group">
            <label for="pass" class="label">Email Address</label>
            <input id="pass" type="text" class="input">
        </div>--}%
        <div class="group">
            %{--<input type="submit" class="button" value="Sign Up">--}%
            <g:actionSubmit value="Register" action="register" class="button"/>
        </div>
        <
        <div class="hr"></div>
    </div>
    </div>
</div>
</g:form>
%{--<h1>Login</h1>
<g:form controller="user">
    <table>
        <tr>
            <td>Username:</td>
            <td><g:textField name="userName" class="input"/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><g:passwordField name="password"/></td>
        </tr>
        <tr>
            <td></td>
            <td><g:actionSubmit value="Login" action ="login"/></td>

        </tr>
    </table>
</g:form>
    <br>
<h1>Register</h1>
<g:form controller="user">
    <table>
        <tr>
            <td>Username:</td>
            <td><g:textField name="userName"/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><g:passwordField name="password"/></td>
        </tr>
        <tr>
            <td></td>
            <td><g:actionSubmit value="Register" action="register" /></td>
        </tr>
    </table>
</g:form>
<h1>${message}</h1>--}%
</body>
</html>