<%-- 
    Document   : Login
    Created on : Feb 18, 2022, 10:26:47 PM
    Author     : msi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="/web/WEB-INF/css/login.css" >
        <title>JSP Page</title>
    </head>
    <body>
       <div class="login">
            <h2>Sign in</h2>
            <br>
            <p>Email</p>
            <input class="user" type="text" placeholder="Enter email">
            <br>
            <p>Password</p>
            <input class="pass" type="text" placeholder="Enter Password">
            <br>
            <div class="check">
                <input class="checkbox" type="checkbox" placeholder="Enter Password">
                "Remember password"         
            </div>
            <br>
            <button>Login</button>
            <br>
            <a href="#"> forgot password</a>
        </div>
    </body>
</html>
