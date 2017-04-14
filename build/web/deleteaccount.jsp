<jsp:include page="header.jsp">
    <jsp:param name="title" value="Delete Account"/>
</jsp:include><br><br><br>
<h1>Are you sure you want to delete your account ${sessionScope.user.getFirstName()}?</h1>
<form action="DeleteAccount" method="post">
    Enter your password to continue: <input type="password" name="pass" placeholder="Password" required>
    <input type="submit" value="Delete your Account">
</form>
<jsp:include page="footer.jsp"/>