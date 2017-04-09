<%@page import="ride_booking.CarBean"%>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Car Table"/>
</jsp:include><br><br><br>
${car.getOwner()}   
${car.getCarName()}
${car.getFromString()}
<jsp:include page="footer.jsp"/>