package admin;
import profile_servlet.ProfileDAO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session_servlet.UserBean;
public class DeleteUser extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        String deleteUsername = request.getParameter("uid");
        UserBean user = new UserBean();
        user = (UserBean)request.getSession(true).getAttribute("user");
        try{
            if(ProfileDAO.deleteUser(deleteUsername)){
                System.out.println("Account Deleted successfully!");
                if(user.getGroup() == 1){response.sendRedirect("welcome.jsp");}
                else{response.sendRedirect("deleteaccount.jsp");}
            } else {
                response.sendRedirect("errordeleteaccount.jsp");
            }
        }catch(Exception e){
            System.out.println("Cant delete user" + e);
        }
    }
}