<%@ page import="session_servlet.UserBean"%>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Login Successful"/>
</jsp:include>
<%UserBean currentUser= (UserBean)session.getAttribute("currentSessionUser");%>
Hello <%=currentUser.getUsername()%>
<jsp:include page="footer.jsp"/>