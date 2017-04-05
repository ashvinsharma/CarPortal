<html>
            <head>
                
               <link rel="stylesheet" type="text/css" href="login.css"/>
               <meta charset="UTF-8">
            
            
            </head>
            
            <body>
            <div class="background"></div>
            <div class="header">
                <jsp:include page="header.jsp">
               <jsp:param name="title" value="Homepage"/>
               </jsp:include>
                   <%--<c:out value="${pageContext.request.}>--%>
                
                
             </div> 
             
            
            <div class="footer">
                
                <jsp:include page="footer.jsp"/> 
            </div>
            </body>

</html>



