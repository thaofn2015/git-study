<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>login</title>
</head>
<body>
    <h1>Spring MVC-Security Login Form</h1>
    <h2>${message}</h2>

    <a
        href="https://www.facebook.com/dialog/oauth?client_id=780394086054885&redirect_uri=https://localhost:8443/SpringWebLoginFacebook/login-facebook">Login
        Facebook</a>
    <form name='loginForm'
        action="<c:url value='j_spring_security_login' />" method='POST'>
        <table>
            <tr>
                <td>User:</td>
                <td><input type='text' name='username'></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='password' /></td>
            </tr>
            <tr>
                <td colspan='2'><input name="submit" type="submit"
                    value="login" /></td>
            </tr>
        </table>
        <input type="hidden" name="${_csrf.parameterName}"
            value="${_csrf.token}" />
    </form>
</body>
</html>