<jsp:include page="header.jsp">
    <jsp:param name="title" value="Delete Account"/>
</jsp:include>

<div class="change">
<h1>Are you sure you want to delete your account ${sessionScope.user.getFirstName()}?</h1>
<form action="DeleteAccount" method="post">
    Enter your password to continue: <input type="password" name="pass" placeholder="Password" required>
    <input type="submit" value="Delete your Account">
</form>
</div>

<div class="bgc"></div>
<div class="gradient"></div>
<div class="f">
<jsp:include page="footer.jsp"/>