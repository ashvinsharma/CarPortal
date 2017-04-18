<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Profile"/>
</jsp:include><br><br><br>
<div align="right"><a href="changepwd.jsp">Change Password</a>&emsp;
    <c:if test="${sessionScope.user.getGroup() == 2}">
        <a href="modifycar.jsp">Change Car</a>
    </c:if>
<a href="changename.jsp">Change Name</a>&emsp;
<a href="changeemail.jsp">Change Email</a>&emsp;
<a href="deleteaccount.jsp">Delete Account</a>&emsp;</div>

<jsp:include page="footer.jsp"/>

    