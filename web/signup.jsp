<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Regsiter"/>
</jsp:include><br><br><br>
<c:choose>
    <c:when test="${sessionScope.user == null}">
        
        
        
        
        
        
         <div class="bgs"></div>
         <div class="grad"></div>
          <div class="cp">
                    <div>Car<span>Portal</span></div>
                    
          </div>
         <div class="box" ></div>  
        <div class="register">
         <form name="registration" action="SignUpServlet" method="post" autocomplete="on"> 
                <input type="text"     name="firstname"  placeholder="First Name" required><br> 
                <input type="text"     name="surname"    placeholder="Surname Name"><br> 
                <input type="email"     name="email"      placeholder="Email address" required><br> 
                <input type="text"     name="uid"        placeholder="Username" required><br> 
                <input type="password" name="pass"       placeholder="Password" required><br> 
                <select name="group" required> <option>Select Type...</option>
                <option value="3">Member</option>
                <option value="2">Owner</option></select>
            <br><input type="submit" value="Signup"></form>
    </c:when>
    <c:otherwise>
        <c:redirect url="index.jsp"/>
    </c:otherwise>
</c:choose>
            <p>Already have an account ? <a href="login.jsp">Login</p></a>

        </div>


                
                
                
                
<div class="f">
<jsp:include page="footer.jsp"/>