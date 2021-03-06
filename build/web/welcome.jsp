

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Welcome"/>
</jsp:include><br><br><br>


<c:choose>
    <c:when test="${sessionScope.user != null}">
        <div class="prof">
            <div align="right"><a href="profile.jsp">Your Profile</a><br></div>
        </div>    
        <c:if test="${sessionScope.user.getGroup() == 1}"> <%--only visible to admin group of users--%>

            <div class="bgs"></div>
            <div class="grad"></div>
            <div class="change">

                Hi ${sessionScope.user.getFirstName()}
                <form action="DeleteUser" method="post">
                    <h2>Type the name of the user you want to delete Account of:</h2><input type="text" name="uid" required placeholder="Username">
                    <input type="submit" value="Delete User Account">
                </form>
            </div>
        </c:if>


        <c:if test="${sessionScope.user.getGroup() == 2}"> <%--only visible to owner group of users--%>
            <c:if test="${sessionScope.user.getCar() == null}">
                <div class="bgs"></div>
                <div class="grad"></div>
                <div class="change">
                    <center>Hi ${sessionScope.user.getFirstName()}</center>
                    <center><h1>Please <a href="modifycar.jsp">Add your Car</a> to continue:</h1></center>
                </div>
            </c:if>
            <c:if test="${not empty sessionScope.user.getCar()}">

                <div class="bg"></div>
                <div class="grad"></div>





                <div class="change">
                    <center>Hi ${sessionScope.user.getFirstName()}</center>
                    <center><h1>Select Dates when you can give your ${sessionScope.user.getCar()}:</h1></center>
                    <center>

                        <form action="DatesLockServlet">    
                            From:<br> <input name="from" type="date" required/><br>To:</br> <input name="to" type="date" required/><br>
                            <input type="submit" value="Submit Dates" align="right">
                        </form>


                    </center>



                    <c:if test="${sessionScope.user.getFromString() != null}"> <%--If Date is already given show table--%>


                        <div class="t"> <table style="width: 100%;">
                                <caption><center>Your commitments</center></caption>
                                <tr style="background-color: #f2f2f2;">
                                    <th>Owner</th>
                                    <th>Car Name</th>
                                    <th>From Date</th>
                                    <th>To Date</th>
                                </tr>
                                <tr>
                                    <td>${sessionScope.user.getFirstName()}</td>
                                    <td>${sessionScope.user.getCar()}</td>
                                    <td>${sessionScope.user.getFromString()}</td>
                                    <td>${sessionScope.user.getToString()}</td>
                                </tr>
                            </table>
                            <center><form action="DeleteTimingsServlet"><input type="submit" value="Delete timings"></form></center>
                                </c:if>
                            </c:if>
                        </c:if>
            </div>
        </div>

        <c:if test="${sessionScope.user.getGroup() == 3}"> <%--only visible to memeber group of users--%>
            <div class="bg"></div>
            <div class="grad"></div>
            <div class="change">

                <center>Hi ${sessionScope.user.getFirstName()}, Let's book your ride #${sessionScope.user.getCount()}.</center>
                <div class="t">
                    <jsp:include page="CarTable" /></div>
            </div>
        </c:if>
    </c:when>
    <c:otherwise>
        <c:redirect url="index.jsp"/>
    </c:otherwise>        
</c:choose>

<div class="f">
    <jsp:include page="footer.jsp"/>