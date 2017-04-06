package session_servlet;
import com.mysql.jdbc.exceptions.MySQLDataException;
import java.sql.*;
public class UserDAO {
    static Connection currentCon = null;
    static Statement stmt = null;
    static ResultSet rs = null;
    public static UserBean login(UserBean bean) throws ClassNotFoundException {
        String searchQuery = "SELECT * FROM `java-test`.users WHERE uid='" + bean.getUsername() 
                + "' AND pass='" + bean.getPassword() + "'";
        // "System.out.println" prints in the console;
        System.out.println("uid entered: " + bean.getUsername());
        System.out.println("pass entered: " + bean.getPassword());
        System.out.println("Query: " + searchQuery);
        try {
            //connect to DB 
            Class.forName("com.mysql.jdbc.Driver");
            currentCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test","root","localhost");
            stmt = currentCon.createStatement();
            rs = stmt.executeQuery(searchQuery);

           if (rs.next()) {
                String firstName = rs.getString("firstname");
                String surName = rs.getString("surname");
                System.out.println(firstName + " logged in.");
                bean.setFirstName(firstName);
                bean.setSurName(surName);
                bean.setValid(true); //if user exists set the isValid variable to true 
            }
            // if user does not exist set the isValid variable to false
           else if (!rs.next()) {
                System.out.println("Sorry, you are not a registered user! Please sign up first");
                bean.setValid(false);
            } 
        } catch (SQLException ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        } //closing all objects
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {System.out.println(e);}
                rs = null;
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {System.out.println(e);}
                stmt = null;
            }
            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (SQLException e) {System.out.println(e);}
                currentCon = null;
            }
        }
        return bean;
    }
    public static UserBean register(UserBean bean) throws ClassNotFoundException, SQLException{
       
        try{
            Class.forName("com.mysql.jdbc.Driver");
            currentCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test","root","localhost");
            stmt = currentCon.createStatement();
            String insertQuery = "INSERT INTO `java-test`.users "
                + "VALUES "
                + "('" + bean.getUsername() + "', '" + bean.getPassword() + "', '" + bean.getFirstName() 
                + "', '"+ bean.getSurName() + "', " + bean.getGroup() + ", '" + bean.getType() + "', '" + bean.getCar() + ", '" + bean.getEmail() +"');";
            stmt.executeUpdate(insertQuery);
            bean.setValid(true);
        }catch(Exception e){
            bean.setValid(false);
            System.out.println(e);
        }finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {System.out.println(e);}
                stmt = null;
            }
            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (SQLException e) {System.out.println(e);}
                currentCon = null;
            }
        }
        return bean;
    }
}