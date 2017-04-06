
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="session_servlet.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Portal :: <%=request.getParameter("title")%></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        
        
        
        <style>
            
           .navbar {
               margin-bottom: 0;
                background-color: #2d2d30;
                border: 0;
                font-size: 11px !important;
                letter-spacing: 2px;
                opacity:0.9;
             } 
            .navbar li a, .navbar .navbar-brand { 
                color: #d5d5d5 !important;
             }
             .navbar-nav li a:hover {
                color: #fff !important;
             }
             .navbar-nav li.active a {
                color: #fff !important;
                background-color:#29292c !important;
             }
             .navbar-right{
                 padding-left: 1350px;
             }
            
            
            
            
            
            
        </style>
\
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
                                        <% UserBean currentUser= (UserBean)request.getSession(true).getAttribute("user");%>
                                         Hi, <%=currentUser.getFirstName()%>
                                         <li><a href="logout.jsp">Logout</a></li>
                                    </c:otherwise>
                                    </c:choose>
                       </ul>
                   </div>
                  
              </div>   
                    
                       
            
        </div>
        
   
</html>
<!-- end of header-->