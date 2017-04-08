<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Change password"/>
</jsp:include><br><br><br>
<form action="UpdatePasswordServlet" method="post" align="center">
    Enter current Password:<input type="password" name="oldpass" required><br>
    Enter new Password:<input type="password" name="newpass" required><br>
    ${requestScope.success}
    <input type="submit" value="Update Password">
</form>
<jsp:include page="footer.jsp"/>