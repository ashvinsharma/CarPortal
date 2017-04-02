<jsp:include page="header.jsp">
    <jsp:param name="title" value="Login"/>
</jsp:include>
<form name="login" action="LoginServlet" autocomplete="on">
    Username: <input type="text" name="uid" placeholder="Username" autofocus required><br>
    Password: <input type="password" name="pass" placeholder="Password" required><br>
    Username Password don't match. Please try again!<br>
    <input type="submit" value="login"><br>
</form>
<%
   String uid= request.getParameter("uid");
   String pass= request.getParameter("pass");
%>
<jsp:include page="footer.jsp"/>