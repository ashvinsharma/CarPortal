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
        <div align="right"><a href="profile.jsp" align>Your Profile</a><br></div>
        <c:if test="${sessionScope.user.getGroup() == 1}"> <%--only visible to admin group of users--%>
            Hi ${sessionScope.user.getFirstName()}
        </c:if>
        <c:if test="${sessionScope.user.getGroup() == 2}"> <%--only visible to owner group of users--%>
            Hi ${sessionScope.user.getFirstName()}
        </c:if>
        <c:if test="${sessionScope.user.getGroup() == 3}"> <%--only visible to memeber group of users--%>
            Hi ${sessionScope.user.getFirstName()}, Let's book your {number} ride.
            <h1>Select Date:</h1>
            <form>
                From: <input type="date"/> To: <input type="date"/><br>
                <input type="submit" value="Choose Cars" align="right">
            </form>
        </c:if>
    </c:when>
</c:choose>

<jsp:include page="footer.jsp"/>