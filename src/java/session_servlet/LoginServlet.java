package session_servlet;
//import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LoginServlet extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, java.io.IOException {

        try {

            UserBean user = new UserBean();
            user.setUserName(request.getParameter("uid"));
            user.setPassword(request.getParameter("pass"));
               
            user = UserDAO.login(user);

            if (user.isValid()) {
                request.getSession(true).setAttribute("user", user);
                response.sendRedirect("index.jsp"); //logged-in page      		
            } else {
                response.sendRedirect("invalidLogin.jsp"); //error page 
            }
        } catch (Throwable theException) {
            System.out.println(theException);
        }
    }
}