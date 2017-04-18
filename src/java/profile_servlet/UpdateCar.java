package profile_servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import session_servlet.UserBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UpdateCar extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        try{
            UserBean user = new UserBean();
            user = (UserBean)request.getSession(true).getAttribute("user");
            String car = request.getParameter("car");
           
            System.out.println(user.getFirstName() + " " + user.getSurName() + "  is changing car"
                + " to " + car);
               
            ProfileDAO.updateCar(user, car);
            response.sendRedirect("welcome.jsp");
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
