

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Welcome"/>
</jsp:include><br><br><br>
    <div class="bg"></div>
    <div class="grad"></div>

<div class="change">
<center>Hi ${sessionScope.user.getFirstName()}, <span style="color:blue;">Dates Changed successfully!</span>
    <h1>Select Dates when you can give your car:</h1>
    <form action="DatesLockServlet">    
        From: <input name="from" type="date" required<br> To: <input name="to" type="date" required/><br>
             <input type="submit" value="Submit Dates" >
    </form></center>

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
                    <center> <form action="DeleteTimingsServlet"><input type="submit" value="Delete timings"></form></center>
            </c:if>
        </c:when>
    </c:choose>
</div>
                <div class="f">
<jsp:include page="footer.jsp"/>