<%@ page import="session_servlet.UserBean"%>
<jsp:include page="header.jsp"/><br><br><br>
${sessionScope.user.getGroup()}<br>
<jsp:include page="footer.jsp"/>