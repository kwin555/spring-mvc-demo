<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Yahoo !!!!!!! From JSP</title>
</head>
<body>
<p><font color="red">${errorMessage}</font></p>
    <form action="/login.do" method="post">
        Enter your name: <input type="text" name="name"/>
        Enter your password: <input type="password" name="password"/>
        <input type="submit" value="Login">
    </form>
</body>
</html>
