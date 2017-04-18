<jsp:include page="header.jsp">
    <jsp:param name="title" value="Change Email"/>
</jsp:include>


<div class="change">
<form action="UpdateEmail" method="post" align="center">
    Enter New Email: <input type="text" name="newemail" required><br>
    Enter Password: <input type="password" name="pass" required>
    <input type="submit" value="Change Email">
</form>
 </div>
<div class="bgc"></div>
<div class="gradient"></div>
 <div class="f">
<jsp:include page="footer.jsp"/>