<%-- 
    Document   : login
    Created on : 29 Mar, 2017, 4:52:39 PM
    Author     : Ashvin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post">
            Username: <input type="text" name="uid"><br>
            Password: <input type="password" name="pass"><br>
            <input type="submit" value="login"><br>
        </form>
        <%
           String uid= request.getParameter("uid");
           String pass= request.getParameter("pass");
        %> 
        Hello, <b><%=uid%></b> your password is <b><%=pass%></b>
    </body>
</html>
