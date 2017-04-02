package session_servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignUpServlet extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        try{
            System.out.println("atleastin here");
            UserBean user = new UserBean();
            user.setUserName(request.getParameter("uid"));
            user.setPassword(request.getParameter("pass"));
            user.setFirstName(request.getParameter("firstname"));
            user.setSurName(request.getParameter("surname"));
            user.setGroup(request.getParameter("group"));
            //not included cars for owners
            
            System.out.println(user.getGroup());
            user = UserDAO.register(user);

            if(user.isValid()){
                request.getSession(true).setAttribute("user", user);
                response.sendRedirect("index.jsp"); //logged-in page      		
            } else {
                response.sendRedirect("invalidregistration.jsp"); //error page 
            }
        } catch(Throwable e){
            System.out.println(e);
        }
    }
}