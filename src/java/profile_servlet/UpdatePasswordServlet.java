package profile_servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import session_servlet.UserBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UpdatePasswordServlet extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        try{
            UserBean user = new UserBean();
            user = (UserBean)request.getSession(true).getAttribute("user");
            String newPassword = request.getParameter("newpass"),
                   oldPassword = request.getParameter("oldpass");
            System.out.println(user.getFirstName() + "  is changing its current password(" + user.getPassword()
            + ") to "+ newPassword + ". Current Password entered is: " + oldPassword);
            response.sendRedirect("changepwd.jsp");
            
            if(user.getPassword().equals(oldPassword)){
                if(ProfileDAO.updatePass(user, newPassword)){
                    user.setPassword(newPassword);
                    response.sendRedirect("successpwd.jsp");
                }
                else{response.sendRedirect("errorpwd.jsp");}
            }
                else{response.sendRedirect("errorpwd.jsp");}
        }catch(Exception e){
            System.out.println(e);
        }
    }
}