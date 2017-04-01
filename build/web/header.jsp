<%-- 
    Document   : header
    Created on : 30 Mar, 2017, 12:26:17 AM
    Author     : Ashvin
--%>
<%@ page import="session_servlet.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Portal :: <%=request.getParameter("title")%></title>
    </head>
    <body>
        <div>
            <a href="index.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%if(request.getSession(true).getAttribute("user") == null){  //no user is logged in
                out.print("<a href=\"login.jsp\">Login</a>&nbsp;");
                out.print("<a href=\"register.jsp\">Register</a>");
            }else if(request.getSession(true).getAttribute("user") != null){ //user is logged in 
                UserBean currentUser= (UserBean)request.getSession(true).getAttribute("user");
                out.print("Hi, " + currentUser.getFirstName() + " <a href=\"logout.jsp\">Logout</a>");
            }
            %>
        </div>
<!-- end of header-->