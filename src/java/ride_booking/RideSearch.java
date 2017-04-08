package ride_booking;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import session_servlet.UserBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class RideSearch extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        System.out.println("hi");
        //parsing data from form
        String fromString = request.getParameter("from");
        String toString = request.getParameter("to");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date fromDate = null, toDate = null;
        try{
            fromDate = formatter.parse(fromString);
            toDate = formatter.parse(toString);
            if(fromDate.before(toDate)){
                if(RideDAO.searchRide(fromString, toString)){
                    response.sendRedirect("bookingconfirmed.jsp");
                }else{
                    System.out.println("idontknowwhattodo");
                    response.sendRedirect("error.jsp");
                }
            }else{
                System.out.println("Looks like From date is larger than To date.");
                response.sendRedirect("error.jsp");
            }
        }catch(Exception e){System.out.println(e);}
    }
}