
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <a href="login.jsp">Log In</a>&nbsp;
                    <a href="signup.jsp">Sign Up</a>
                </c:when>
                <c:otherwise>
                    <% UserBean currentUser= (UserBean)request.getSession(true).getAttribute("user");%>
                    Hi, <%=currentUser.getFirstName()%>
                    <a href="logout.jsp">Logout</a>
                </c:otherwise>
            </c:choose>
        </div>
<!-- end of header-->