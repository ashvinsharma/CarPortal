<jsp:include page="header.jsp">
    <jsp:param name="title" value="Login"/>
</jsp:include>
<%
    if(request.getSession(false).getAttribute("user") == null){
        out.print("<form name=\"login\" action=\"LoginServlet\" method=\"POST\" autocomplete=\"on\"> "
                + "Username: <input type=\"text\" name=\"uid\" placeholder=\"Username\" autofocus required><br> "
                + "Password: <input type=\"password\" name=\"pass\" placeholder=\"Password\" required><br> "
                + "<input type=\"submit\" value=\"Login\"><br></form>");
    }else{response.sendRedirect("index.jsp");}
%>
<%
   String uid= request.getParameter("uid");
   String pass= request.getParameter("pass");
%>
<jsp:include page="footer.jsp"/>