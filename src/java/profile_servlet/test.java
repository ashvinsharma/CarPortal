package profile_servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session_servlet.UserBean;

public class test extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        UserBean user = (UserBean) request.getSession(false).getAttribute("user");
        System.out.println(user.getCar());
    }
}