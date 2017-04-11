<%-- 
    Document   : welcome
    Created on : 8 Apr, 2017, 12:36:51 AM
    Author     : ashvi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Welcome"/>
</jsp:include><br><br><br>
Hi ${sessionScope.user.getFirstName()}, 
<span style="color: red;">There is some problem locking your dates, Please try again</span>
<h1>Select Dates when you can give your car:</h1>
<form action="DatesLockServlet">    
    From: <input name="from" type="date"/> To: <input name="to" type="date"/><br>
        <input type="submit" value="Submit Dates" align="right">
</form>
<c:choose>
    <c:if test="${sessionScope.user.getFromString()} != null">
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
</c:if>
</c:choose>
<jsp:include page="footer.jsp"/>