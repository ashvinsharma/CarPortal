<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Change/Add Car"/>
</jsp:include><br><br><br>


<div class="bgs"></div>
         <div class="grad"></div>
         
  <div class="change">
<form action="UpdateCar">
    <input type="text" name="car" required>
    <input type="submit" value="Add/Change Car">
</form>
  </div>
<div class="f">
<jsp:include page="footer.jsp"/>