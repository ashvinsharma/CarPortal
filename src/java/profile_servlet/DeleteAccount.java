package profile_servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session_servlet.UserBean;

public class DeleteAccount extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        UserBean user = new UserBean();
        user = (UserBean)request.getSession(true).getAttribute("user");
        
        String passTyped = request.getParameter("pass");
        System.out.println("Password typed: " + passTyped);
        try{
            if(passTyped.equals(user.getPassword())){
                if(ProfileDAO.deleteUser(user.getUsername())){
                    System.out.println("Account Deleted successfully!");
                    request.getSession(false).invalidate();
                    System.out.println(request.getSession().getAttribute("user") + " logged out!");
                    response.sendRedirect("index.jsp");
                }
                else{
                    System.out.println("Error occured in deleting the account check ProfileDAO.deleteUser for more info.");
                }
            }else{
                System.out.println("Passwords do not match!");
                response.sendRedirect("errordeleteaccount.jsp");
            }
        }catch(Exception e){
            System.out.println("Cant redirect: " + e);
        }
    }
}
