<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="ride_booking.CarBean"%>
<%@page import="session_servlet.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Portal :: <%=request.getParameter("title")%></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="login.css"/>
        <link rel="stylesheet" type="text/css" href="header.css"/>
        <link rel="stylesheet" type="text/css" href="index.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div>
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">Home</a>
                        <ul class="nav navbar-nav navbar-right">
                            <c:choose>
                                <c:when test="${sessionScope.user == null}">
                                    <li><a href="login.jsp">Log In</a>&nbsp;
                                    <li><a href="signup.jsp">Sign Up</a></li>
                                </c:when>
                                <c:otherwise>
                                    Hi, ${sessionScope.user.getFirstName()}
                                    <li><a href="logout.jsp">Logout</a></li>
                                </c:otherwise>
                                </c:choose>
                        </ul>
                    </div>
                </div>   
        </div>
        <!-- end of header-->