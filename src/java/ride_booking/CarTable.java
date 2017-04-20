package ride_booking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CarTable extends HttpServlet{
    static Connection currentConnection = null;
    static Statement currentStatement = null;
    static ResultSet currentRs = null;

    public static void processRequest(HttpServletResponse response, HttpServletRequest request) throws IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        CarBean carBean = new CarBean();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String selectQuery = "SELECT * FROM `java-test`.cars_avail;";
            
            System.out.println(selectQuery);
            
            out.print(" <h2>Available Car Timings : </h2>"
                    + "<table style=\"width: 100%;\">"
                    + "<tr style=\"background-color: #f2f2f2;\">"
                    + "<th><b> Owner </b></th>"
                    + "<th><b> Car </b></th>"
                    + "<th><b> From </b></th>"
                    + "<th><b> To </b></th>"
                    + "<th><b>  </b></th>"
                    + "</tr>" 
            );
            
            currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
            currentStatement = currentConnection.createStatement();
            currentRs = currentStatement.executeQuery(selectQuery);
            while(currentRs.next()){
                carBean.setOwner(currentRs.getString("owner"));
                carBean.setOwnerName(currentRs.getString("owner_name"));
                carBean.setCarName(currentRs.getString("car_name"));
                carBean.setFromString(currentRs.getString("from"));
                carBean.setToString(currentRs.getString("to"));
                carBean.setEmail(currentRs.getString("email"));
                System.out.println(carBean.getOwner() + " " + carBean.getCarName() + " " + carBean.getFromString() +
                        " " + carBean.getToString());
                        
                out.print(""
                        + "<tr>"
                        + "<td> "+ carBean.getOwnerName() +"</td>"
                        + "<td> "+ carBean.getCarName() +"</td>"
                        + "<td> "+ carBean.getFromString() +"</td>"
                        + "<td> "+ carBean.getToString() +"</td>");
                
                out.print(""
                        + "<td><a href='bookcar.jsp?owner="+ carBean.getOwner() 
                        + "&car=" + carBean.getCarName() 
                        + "&ownername=" + carBean.getOwnerName()
                        + "&email=" + carBean.getEmail()
                        + "'>Book</a></td>"
                        + "</tr>");
            }
            out.print("</table>");
        }catch(Exception e){
            System.out.println(e);
        }
        finally {
            if (currentRs != null) {
                try {
                    currentRs.close();
                } catch (SQLException e) {System.out.println(e);}
                currentRs = null;
            }
            if (currentStatement != null) {
                try {
                    currentStatement.close();
                } catch (SQLException e) {System.out.println(e);}
                currentStatement = null;
            }
            if (currentConnection != null) {
                try {
                    currentConnection.close();
                } catch (SQLException e) {System.out.println(e);}
                currentConnection = null;
            }
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(response, request);
    }
}