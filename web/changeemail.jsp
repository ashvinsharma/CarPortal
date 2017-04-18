<jsp:include page="header.jsp">
    <jsp:param name="title" value="Change Email"/>
</jsp:include><br><br><br>
<form action="UpdateEmail" method="post" align="center">
    Enter New Email: <input type="text" name="newemail" required><br>
    Enter Password: <input type="password" name="pass" required><br>
    <input type="submit" value="Change Email">
</form>
<jsp:include page="footer.jsp"/>