package session_servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        try{
            UserBean user = new UserBean();
            user.setUserName(request.getParameter("uid"));
            user.setPassword(request.getParameter("pass"));
               
            user = UserDAO.login(user);

            if (user.isValid()) {
                request.getSession(true).setAttribute("user", user);
                response.sendRedirect("welcome.jsp"); //logged-in page      		
            } else {
                response.sendRedirect("invalidlogin.jsp"); //error page 
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}