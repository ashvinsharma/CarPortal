<jsp:include page="header.jsp">
    <jsp:param name="title" value="User Logged Out!"/>
</jsp:include>
<% if(request.getSession(false).getAttribute("user") != null){
    request.getSession(false).invalidate();
    out.print("you are logged out successfully!");
    System.out.println(request.getSession().getAttribute("user") + " logged out!");
    response.sendRedirect("index.jsp");
}else {
    out.print("You are already logged out.");
}%>
<jsp:include page="footer.jsp"/>