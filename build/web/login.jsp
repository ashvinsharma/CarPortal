<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

                
                
               
                
         
                
                
                
                    
                     <jsp:include page="header.jsp">
                        <jsp:param name="title" value="Login"/>
                        </jsp:include>
                        <c:choose>
                            <c:when test="${sessionScope.user == null}">
                              <div class="login">
                     <form name=login action=LoginServlet method=POST autocomplete=on>
                     <input type=text name=uid placeholder=Username autofocus required><br>
                     <input type=password name=pass placeholder=Password autofocus required><br>
                              <input type=submit value=Login>
                   
                     </form>
                </div>
                            </c:when>
                        <c:otherwise>
                                You are already logged in!
                                <c:redirect url="index.jsp"/>
                        </c:otherwise>
                            </c:choose>
                               
                                 
                  
                
                <div class="bg"></div>
                <div class="grad"></div>
                
                
                 <div class="cp">
                    <div>Car<span>Portal</span></div>
                    
                </div>
                
                <div class="login">
                     <form name=login action=LoginServlet method=POST autocomplete=on>
                     <input type=text name=uid placeholder=Username autofocus required><br>
                     <input type=password name=pass placeholder=Password autofocus required><br>
                              <input type=submit value=Login>
                   
                </form>
                </div>
                    
                   <div class="f">
                                <jsp:include page="footer.jsp"/>
                       
                
                      
                    
                    
                    
                
                   
                               
           
     