package profile_servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import session_servlet.UserBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class UpdateName extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        try{
            UserBean user = new UserBean();
            user = (UserBean)request.getSession(true).getAttribute("user");
            String newFirstName = request.getParameter("newfirstname"),
                   newSurname = request.getParameter("newsurname"),
                    pass = request.getParameter("pass");
            System.out.println(user.getFirstName() + " " + user.getSurName() + "  is changing its current name"
                    + " to "+ newFirstName + " " + newSurname + ". Current Password entered is: " + pass);
            if(user.getPassword().equals(pass)){
                if(ProfileDAO.updateName(user, newFirstName, newSurname)){
                    user.setFirstName(newFirstName);
                    user.setSurName(newSurname);
                    response.sendRedirect("successname.jsp");
                }
                else{response.sendRedirect("errorname.jsp");}
            }
            else{response.sendRedirect("errorname.jsp");}
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
