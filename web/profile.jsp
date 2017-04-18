<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Profile"/>
</jsp:include><br><br><br>


<style>
    .container{
       padding-left: 20%;
       padding-right:20%;
       z-index:3;
    } 
    .row{
        margin:100px;
        
    }
    
    
</style>


<div class="container text-center">
    <div class="row">
        <div class="col-sm-4">
            <a href="changepwd.jsp">Change Password</a>&emsp;
        </div>
        <div class="col-sm-4">
            <a href="changepwd.jsp">Change Password</a>&emsp;
        </div>
         <c:if test="${sessionScope.user.getGroup() == 2}">
       <a href="modifycar.jsp">Change Car</a>
         </c:if>
    </div>

    <div class="row">
        <div class="col-sm-4">
           <a href="changeemail.jsp">Change Email</a>&emsp; 
        </div>
        <div class="col-sm-4">
            <a href="deleteaccount.jsp">Delete Account</a>&emsp;
        
        </div>
    </div>
         
<div>   
    
    <div class="f">
    <jsp:include page="footer.jsp"/>
        
        
        