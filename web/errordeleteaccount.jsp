<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Error"/>
</jsp:include><br><br><br>
<c:choose>
    <c:when test="${not empty sessionScope.user}">
        <c:if test="${sessionScope.user.getGroup() == 1}">
            Error: Check Logs.
            <a href="deleteaccount.jsp">Back</a>
        </c:if>
        <c:if test="${sessionScope.user.getGroup() == 2 || sessionScope.user.getGroup() == 3}">
            <h1>Passwords do not match. Please try Again!</h1>
            <a href="deleteaccount.jsp">Back</a>
        </c:if>
    </c:when>
</c:choose>
<jsp:include page="footer.jsp"/>