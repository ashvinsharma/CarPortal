<jsp:include page="header.jsp">
    <jsp:param name="title" value="Book Car"/>
</jsp:include><br><br><br>
Hi ${sessionScope.user.getFirstName()} your ${param.car} is booked and will accompany you on your voyage.
Contact ${param.ownername} for more details.<br>
<a href="BookingFinal?owner=${param.owner}">Click to confirm.</a>
<jsp:include page="footer.jsp" />