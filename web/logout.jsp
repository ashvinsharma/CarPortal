<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="User Logged Out!"/>
</jsp:include>
<c:choose>
    <c:when test="${sessionScope.user != null}">
        <% request.getSession(false).invalidate();
         System.out.println(request.getSession().getAttribute("user") + " logged out!");%>
        You are logged out successfully!
        <c:redirect url="index.jsp"/>
    </c:when>
    <c:otherwise>You are already logged out</c:otherwise>
</c:choose>    
}%>
<jsp:include page="footer.jsp"/>