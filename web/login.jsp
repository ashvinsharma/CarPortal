<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   
<html>
            <head>
                 
               <link rel="stylesheet" type="text/css" href="login.css"/>
               <meta charset="UTF-8">
                
               
             
            </head>
            
                <div class="body"></div>
                <div class="grad"></div>
                <div class="cp">
                    <div>Car<span>Portal</span></div>
                </div>
                <br>
         
                <div class="login">
                     <form name=login action=LoginServlet method=POST autocomplete=on>
                     <input type=text name=uid placeholder=Username autofocus required><br>
                     <input type=password name=pass placeholder=Password autofocus required><br>
                              <input type=submit value=Login>
                   
                </form>
                </div>
                
                <div class="nav">
                    
                     <jsp:include page="header.jsp">
                        <jsp:param name="title" value="Login"/>
                        </jsp:include>
                        <c:choose>
                            <c:when test="${sessionScope.user == null}">
        
                            </c:when>
                        <c:otherwise>
                                You are already logged in!
                                <c:redirect url="index.jsp"/>
                        </c:otherwise>
                            </c:choose>
                            <jsp:include page="footer.jsp"/>
                    
                    
                    
                    
                    
                    
                </div>
                   

           
         </html>