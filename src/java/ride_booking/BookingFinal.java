package ride_booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session_servlet.UserBean;

public class BookingFinal extends HttpServlet{
    static Connection currentConnection = null;
    static Statement currentStatement = null;
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        String carOwner = request.getParameter("owner");
        UserBean user = new UserBean();
        user = (UserBean)request.getSession(true).getAttribute("user");
        
        try {
            BookingFinal.deleteEntry(carOwner);
            BookingFinal.increaseCount(carOwner, user.getUsername());
            response.sendRedirect("bookcarsuccess.jsp");
        } catch (Exception ex) {
            System.out.println("Error executing SQL queries: " + ex);
        }
    }
    public static void deleteEntry(String owner) throws SQLException{
        String deleteQuery = "DELETE FROM `java-test`.`cars_avail` WHERE `owner`= '" + owner +"';";
        System.out.println("Query Entered: " + deleteQuery);
        currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
        currentStatement = currentConnection.createStatement();
        currentStatement.executeUpdate(deleteQuery);
        
        currentConnection.close();
        currentStatement.close();
        System.out.println("Query executed Successfully!");
}
    public static void increaseCount(String owner, String member) throws SQLException{
        String updateQuery = "UPDATE `java-test`.`users` SET "
                + "`count`= `count`+ 1 WHERE `uid`='" + member + "' OR " 
                + "`uid`='" + owner + "';";
        
        System.out.println("Query Entered: " + updateQuery);
        currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
        currentStatement = currentConnection.createStatement();
        currentStatement.executeUpdate(updateQuery);
        
        currentConnection.close();
        currentStatement.close();
        System.out.println("Query executed Successfully!");
    }
}
