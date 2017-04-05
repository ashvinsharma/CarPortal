<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Login"/>
</jsp:include>
<c:choose>
    <c:when test="${sessionScope.user == null}">
        <form name=login action=LoginServlet method=POST autocomplete=on>
        Username: <input type=text name=uid placeholder=Username autofocus required><br>
        Password: <input type=password name=pass placeholder=Password required><br>
        <input type=submit value=Login><br></form>
    </c:when>
    <c:otherwise>
        You are already logged in!
        <c:redirect url="index.jsp"/>
    </c:otherwise>
</c:choose>
<jsp:include page="footer.jsp"/>