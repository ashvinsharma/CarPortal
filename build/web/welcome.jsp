<%-- 
    Document   : welcome
    Created on : 8 Apr, 2017, 12:36:51 AM
    Author     : ashvi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Welcome"/>
</jsp:include><br><br><br>
<c:choose>
    <c:when test="${sessionScope.user != null}">
        <div align="right"><a href="profile.jsp">Your Profile</a><br></div>
            
        <c:if test="${sessionScope.user.getGroup() == 1}"> <%--only visible to admin group of users--%>
            Hi ${sessionScope.user.getFirstName()}
            <form action="DeleteUser" method="post">
                <h2>Type the name of the user you want to delete Account of:</h2><input type="text" name="uid" required placeholder="Username">
                <input type="submit" value="Delete User Account">
            </form>
        </c:if>
        
            
        <c:if test="${sessionScope.user.getGroup() == 2}"> <%--only visible to owner group of users--%>
            Hi ${sessionScope.user.getFirstName()}
            <c:if test="${sessionScope.user.getCar() == null}">
                <h1>Please <a href="modifycar.jsp">Add your Car</a> to continue:</h1>
            </c:if>
            <c:if test="${not empty sessionScope.user.getCar()}">
                <h1>Select Dates when you can give your ${sessionScope.user.getCar()}:</h1>
                <form action="DatesLockServlet">    
                    From: <input name="from" type="date" required/> To: <input name="to" type="date" required/><br>
                    <input type="submit" value="Submit Dates" align="right">
                </form>
                <c:if test="${sessionScope.user.getFromString() != null}"> <%--If Date is already given show table--%>
                    <table style="width: 100%;">
                        <caption>Your commitments</caption>
                        <tr style="background-color: #f2f2f2;">
                            <th>Owner</th>
                            <th>Car Name</th>
                            <th>From Date</th>
                            <th>To Date</th>
                        </tr>
                        <tr>
                            <td>${sessionScope.user.getFirstName()}</td>
                            <td>${sessionScope.user.getCar()}</td>
                            <td>${sessionScope.user.getFromString()}</td>
                            <td>${sessionScope.user.getToString()}</td>
                        </tr>
                    </table>
                    <form action="DeleteTimingsServlet"><input type="submit" value="Delete timings"></form>
                </c:if>
            </c:if>
        </c:if>


        <c:if test="${sessionScope.user.getGroup() == 3}"> <%--only visible to memeber group of users--%>
            Hi ${sessionScope.user.getFirstName()}, Let's book your ride #${sessionScope.user.getCount()}.
            <jsp:include page="CarTable" />
        </c:if>
            
    </c:when>
</c:choose>

<jsp:include page="footer.jsp"/>