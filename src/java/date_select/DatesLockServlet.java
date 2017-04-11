package date_select;

import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ride_booking.RideDAO;
import session_servlet.UserBean;

public class DatesLockServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        UserBean user = (UserBean) request.getSession(false).getAttribute("user");
        String fromString = request.getParameter("from");
        String toString = request.getParameter("to");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date fromDate = null, toDate = null;
        
        try{
            fromDate = formatter.parse(fromString);
            System.out.println("ridesearch: " + fromString);
            toDate = formatter.parse(toString);
            if(fromDate.before(toDate)){
                RideDAO.lockdates(user.getUsername(), user.getCar(),fromString, toString);
            }
        }catch(Exception e){}
    }
}