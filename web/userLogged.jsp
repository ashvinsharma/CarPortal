<%@ page import="session_servlet.UserBean"%>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Login Successful"/>
</jsp:include>
<%UserBean currentUser= (UserBean)request.getSession(true).getAttribute("user");%>
Hello <%=currentUser.getUsername()%>
<jsp:include page="footer.jsp"/>