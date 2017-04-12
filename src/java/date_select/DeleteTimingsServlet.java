package date_select;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ride_booking.RideDAO;
import session_servlet.UserBean;

public class DeleteTimingsServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        UserBean user = (UserBean) request.getSession(false).getAttribute("user");
        if(RideDAO.deletedates(user)){
            try {
                user.setFromString(null);
                user.setToString(null);
                response.sendRedirect("successdateslocked.jsp");
            } catch (Exception e) {
                System.out.println("Error Redirecting the page: " + e);
            }
        }
        else{
            try{
                response.sendRedirect("errordateslocked.jsp");
            }catch(Exception e){
                System.out.println("Error Redirecting the page: " + e);
            }
        }
    }
}