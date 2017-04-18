<jsp:include page="header.jsp">
    <jsp:param name="title" value="Change Name"/>
</jsp:include>


<div class="change">
<form action="UpdateName" method="post" align="center">
    Enter New First Name: <input type="text" name="newfirstname" required> <br>Enter Surname:<input type="text" name="newsurname" required><br>
    Enter Password: <input type="password" name="pass" required><br>
    <input type="submit" value="Change Name">
</form>
</div>

<div class="bgc"></div>
<div class="gradient"></div>
<div class="f">
<jsp:include page="footer.jsp"/>