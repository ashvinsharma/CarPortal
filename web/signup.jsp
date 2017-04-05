<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Regsiter"/>
</jsp:include>
<c:choose>
    <c:when test="${sessionScope.user == null}">
        <form name='registration' action='SignUpServlet' method='post' autocomplete='on'> 
        First Name:      <input type='text'     name='firstname'  placeholder='First Name' required><br> 
        Surname Name:    <input type='text'     name='surname'    placeholder='Surname Name'><br> 
        Email address:   <input type='text'     name='email'      placeholder='Email address' required><br> 
        Username:        <input type='test'     name='uid'        placeholder='Username' required><br> 
        Password:        <input type='password' name='pass'       placeholder='Password' required><br> 
        You are:         <select name='group'> <option>Select Type...</option><option value='3'>Member</option><option value='2'>Owner</option></select>
        <br><input type='submit' value='Signup'> </form>
    </c:when>
    <c:otherwise>
        <c:redirect url="index.jsp"/>
    </c:otherwise>
</c:choose>
Already have an account ? <a href="login.jsp">Login</a>
<jsp:include page="footer.jsp"/>