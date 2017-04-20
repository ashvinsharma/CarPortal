package ride_booking;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import session_servlet.UserBean;

public class RideDAO{
    static Connection currentConnection = null;
    static Statement currentStatement = null;
    static ResultSet currentRs = null;
    public static boolean searchRide(CarBean carBean, String fromString, String toString){
        boolean flag = false;
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
                flag = true;
            }
            else{System.out.println("end!");}
        }catch(Exception e){
            System.out.println(e);
            flag = false;
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
        return flag;
    }
    public static void lockdates(String username, String carName, String fromString, String toString, String firstName, String email){
        try{
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date fromDate = formatter.parse(fromString),
                    toDate = formatter.parse(toString);
            System.out.println(fromString);
            Class.forName("com.mysql.jdbc.Driver");
            String insertQuery = "INSERT INTO `java-test`.`cars_avail` " 
                    + "VALUES ('" + username + "', '" + carName + "', '" + fromString + "', '" + toString + "', '" + firstName + "', '" + email + "');";
            System.out.println("Query Entered: " + insertQuery);
            
            Class.forName("com.mysql.jdbc.Driver");
            currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
            currentStatement = currentConnection.createStatement();
            
            currentStatement.executeUpdate(insertQuery);
            System.out.println("Dates entered by owner successfully!");
            
        }catch(Exception e){
        System.out.println("Error in lockdates.\n" + e);
        }finally {
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
    public static boolean deletedates(UserBean user){
        boolean flag = false;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String deleteQuery = "DELETE FROM `java-test`.`cars_avail` WHERE `owner`='" + user.getUsername() + "';";
            System.out.println(deleteQuery);
            currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
            currentStatement = currentConnection.createStatement();
            currentStatement.executeUpdate(deleteQuery);
            System.out.println("Dates Deleted Successfully");
            flag = true;
            
        }catch(Exception e){
            System.out.println("Error in deleting the dates.\n" + e);
            flag = false;
        }finally{
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
            return flag;
        }
    }
}