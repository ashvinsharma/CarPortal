package profile_servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import session_servlet.UserBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateEmail extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        try{
            
             UserBean user = new UserBean();
             user = (UserBean)request.getSession(true).getAttribute("user");
             String newemail = request.getParameter("newemail"), pass = request.getParameter("pass");
             
             System.out.println(user.getFirstName() + " " + user.getSurName() + "  is changing email "
                    + " to "+ newemail + " " + ". Current Password entered is: " + pass);
        
             if(user.getPassword().equals(pass)){
                if(ProfileDAO.updateEmail(user, newemail )){
                    user.setEmail(newemail);
                    
                    response.sendRedirect("successemail.jsp");
                }
                else{response.sendRedirect("erroremail.jsp");}
            }
            else{response.sendRedirect("erroremail.jsp");}
        }catch(Exception e){
            System.out.println(e);
        }
    }
}