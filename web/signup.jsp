<jsp:include page="header.jsp">
    <jsp:param name="title" value="Regsiter"/>
</jsp:include>
<%
    if(request.getSession(false).getAttribute("user") == null){ //user is not logged in
        out.print("<form name=\"registration\" action=\"SignUpServlet\" method=\"post\" autocomplete=\"on\"> "
            + "First Name:      <input type=\"text\"     name=\"firstname\"  placeholder=\"First Name\" required><br> "
            + "Surname Name:    <input type=\"text\"     name=\"surname\"    placeholder=\"Surname Name\"><br> "
            + "Email address:   <input type=\"text\"     name=\"email\"      placeholder=\"Email address\" required><br> "
            + "Username:        <input type=\"test\"     name=\"uid\"        placeholder=\"Username\" required><br> "
            + "Password:        <input type=\"password\" name=\"pass\"       placeholder=\"Password\" required><br> "
            + "You are:         <select name=\"group\"> <option value=\"3\">Member</option><option value=\"2\">Owner</option></select>"
            + "<input type=\"submit\" value=\"Signup\"> </form>");
    }else{response.sendRedirect("index.jsp");}
%>
Already have an account ? <a href="login.jsp">Login</a>
<jsp:include page="footer.jsp"/>