package session_servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignUpServlet extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        try{
            UserBean user = new UserBean();
            user.setUserName(request.getParameter("uid"));
            user.setPassword(request.getParameter("pass"));
            user.setFirstName(request.getParameter("firstname"));
            user.setSurName(request.getParameter("surname"));
            user.setGroup(request.getParameter("group"));
            user.setEmail(request.getParameter("email"));
            user.setCar(request.getParameter("car"));
            
            System.out.println("User: " + user.getUsername() + "signing up.");
            user = UserDAO.register(user);

            if(user.isValid()){
                request.getSession(true).setAttribute("user", user);
                response.sendRedirect("index.jsp"); //logged-in page      		
            } else {
                System.out.println("SignUp failed!");
                response.sendRedirect("errorsignup.jsp"); //error page 
            }
        } catch(Throwable e){
            System.out.println(e);
        }
    }
}