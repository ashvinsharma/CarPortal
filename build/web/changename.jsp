<jsp:include page="header.jsp">
    <jsp:param name="title" value="Change Name"/>
</jsp:include><br><br><br>
<form action="UpdateName" method="post" align="center">
    Enter New First Name: <input type="text" name="newfirstname" required> Surname:<input type="text" name="newsurname" required><br>
    Enter Password: <input type="password" name="pass" required><br>
    <input type="submit" value="Change Name">
</form>
<jsp:include page="footer.jsp"/>