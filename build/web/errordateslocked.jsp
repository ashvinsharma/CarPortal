<jsp:include page="header.jsp">
    <jsp:param name="title" value="Welcome"/>
</jsp:include><br><br><br>
Hi ${sessionScope.user.getFirstName()}, <span style="color: red;">There is some problem locking your dates, Please try again</span>
    <h1>Select Dates when you can give your car:</h1>
    <form action="DatesLockServlet">    
        From: <input name="from" type="date"/> To: <input name="to" type="date"/><br>
            <input type="submit" value="Submit Dates" align="right">
    </form>
<jsp:include page="footer.jsp"/>