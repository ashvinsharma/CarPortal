<jsp:include page="header.jsp">
    <jsp:param name="title" value="Login"/>
</jsp:include>
        <form method="post">
            Username: <input type="text" name="uid" value="username"><br>
            Password: <input type="password" name="pass" value="password"><br>
            <input type="submit" value="login"><br>
        </form>
        <%
           String uid= request.getParameter("uid");
           String pass= request.getParameter("pass");
        %> 
<jsp:include page="footer.jsp"/>