<jsp:include page="header.jsp">
    <jsp:param name="title" value="Regsiter"/>
</jsp:include>
<%
    if(request.getSession(false).getAttribute("user") == null){ //user is not logged in
        out.print("<form method=\"post\"> "
            + "First Name:      <input type=\"text\"     name=\"firstname\"  placeholder=\"First Name\"><br> "
            + "Surname Name:    <input type=\"text\"     name=\"surname\"    placeholder=\"Surname Name\"><br> "
            + "Email address:   <input type=\"text\"     name=\"email\"      placeholder=\"email address\"><br> "
            + "Username:        <input type=\"test\"     name=\"uid\"        placeholder=\"Username\"><br> "
            + "Password:        <input type=\"password\" name=\"pass\"       placeholder=\"Password\"><br> "
            + "<input type=\"submit\" value=\"Signup\"> </form>");
    }else{response.sendRedirect("index.jsp");
    }
%>
Already have an account ? <a href="login.jsp">Login</a>
<jsp:include page="footer.jsp"/>