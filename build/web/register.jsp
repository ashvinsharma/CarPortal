<jsp:include page="header.jsp">
    <jsp:param name="title" value="Regsiter"/>
</jsp:include>
<form method="post">
    Name:<input type="text" name="name" placeholder="Your Full Name"><br>
    Email address:<input type="text" name="email" placeholder="Your email address"><br>
    Username:<input type="test" name="uid" placeholder="Your Username"><br>
    Password:<input type="password" name="pass" placeholder="Your Password"><br>
    <input type="submit" value="Signup">
</form>
Already have an account ? <a href="login.jsp">Login</a>
<jsp:include page="footer.jsp"/>