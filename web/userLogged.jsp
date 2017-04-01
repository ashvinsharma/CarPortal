<jsp:useBean id="users" class="session_servlet.UserBean"/>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Login Successful"/>
</jsp:include>       
<p><jsp:getProperty name="users" property="uid"/></p>
<jsp:include page="footer.jsp"/>