<%-- 
    Document   : welcome
    Created on : 8 Apr, 2017, 12:36:51 AM
    Author     : ashvi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Welcome"/>
</jsp:include><br><br><br>

<div class="bg"></div>
<div class="grad"></div>

<div class="change">    
    <center>Hi ${sessionScope.user.getFirstName()}, 
        <span style="color: red;">There is some problem changing your dates, Please try again</span>
        <h1>Select Dates when you can give your car:</h1>
        <form action="DatesLockServlet">
            From:<br>
            <input name="from" type="date" required/><br>
            To:<br>
            <input name="to" type="date" required/><br>
            <input type="submit" value="Submit Dates" align="right">
        </form>

        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <c:if test="${sessionScope.user.getFromString() != null}">
                    <table style="width: 100%;">
                        <caption><center>Your commitments</center></caption>
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
                </c:when>
            </c:choose>
    </center>
</div>

<div class="f">
    <jsp:include page="footer.jsp"/>