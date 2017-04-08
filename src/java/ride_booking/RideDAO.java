package ride_booking;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
public class RideDAO{
    static Connection currentConnection = null;
    static Statement currentStatement = null;
                
    public static boolean searchRide(String fromString, String toString){
        try {
            SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
            System.out.println(formater.parse(fromString));
            Date fromDate = formater.parse(fromString),
                    toDate = formater.parse(toString);
        }catch(Exception e){System.out.println("Something wrong in converting date please check again!");}
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String updateQuery = "";
            
            currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
            currentStatement = currentConnection.createStatement();
            currentStatement.executeUpdate(updateQuery);
        }catch(Exception e){System.out.println(e);}
    }
}