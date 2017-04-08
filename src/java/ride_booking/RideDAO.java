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
    static ResultSet currentRs = null;
    public static boolean searchRide(CarBean carBean, String fromString, String toString){
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date fromDate = formatter.parse(fromString),
                    toDate = formatter.parse(toString);
            System.out.println(fromString);
            Class.forName("com.mysql.jdbc.Driver");
            String selectQuery = "SELECT * FROM `java-test`.cars_avail " 
                                + "WHERE `from` <= '"+ fromString + "' "
                                + "AND `to` >= '" + toString + "';";
            
            System.out.println(selectQuery);
            
            currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
            currentStatement = currentConnection.createStatement();
            currentRs = currentStatement.executeQuery(selectQuery);
            if(currentRs.next()){
                carBean.setOwner(currentRs.getString("owner"));
                carBean.setCarName(currentRs.getString("car_name"));
                carBean.setFromString(currentRs.getString("from"));
                carBean.setToString(currentRs.getString("to"));
                System.out.println(carBean.getOwner() + " " + carBean.getCarName() + " " + carBean.getFromString() +
                        " " + carBean.getToString());
                return true;
            }
            else{System.out.println("end!");}
        }catch(Exception e){System.out.println(e);}
        return false;
    }
}