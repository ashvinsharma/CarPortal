<jsp:include page="header.jsp">
    <jsp:param name="title" value="Book Car"/>
</jsp:include><br><br><br><br><br><br>

 <div class="bgs"></div>
 <div class="grad"></div>
         
 <style>
     
     h1{
         
         color:white;
         
     }
 </style>       
 <div class="nav">      
         
     <center><h1>Hi ${sessionScope.user.getFirstName()} your ${param.car} is booked and will accompany you on your voyage.
             <a href="mailto:${param.email}">Contact ${param.ownername}</a> for more details.</h1></center><br>
        <a href="BookingFinal?owner=${param.owner}"><center>Click to confirm.</center></a>
 </div>
<div class="f">
<jsp:include page="footer.jsp" />