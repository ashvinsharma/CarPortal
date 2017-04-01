package session_servlet;
import java.sql.*;
public class UserDAO {
    static Connection currentCon = null;
    static Statement stmt = null;
    static ResultSet rs = null;
    public static UserBean login(UserBean bean) throws ClassNotFoundException {
        String uid = bean.getUsername();    
        String pass = bean.getPassword();
        String searchQuery = "SELECT * FROM `java-test`.users WHERE uid='" + uid 
                + "' AND pass='" + pass + "'";
        // "System.out.println" prints in the console;
        System.out.println("uid entered: " + uid);
        System.out.println("pass entered: " + pass);
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
                } catch (SQLException e) {
                }
                rs = null;
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (Exception e) {
                }
                stmt = null;
            }
            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (Exception e) {
                }
                currentCon = null;
            }
        }
        return bean;
    }
    public static UserBean register(UserBean bean) throws ClassNotFoundException{
        String uid = bean.getUsername(),
        pass = bean.getPassword(),
        fname = bean.getFirstName(),
        sname = bean.getSurName(),
        gid = bean.getGroup(),
        type= bean.get
        car = bean.getCar();
        
        String insertQuery = "INSERT INTO `java-test`.users "
                + "VALUES "
                + "('"+uid+"', '"+pass+"', '"+fname+"', '"+sname+"', "+gid+", '"+type+"', '"+car"');";
        return bean;
    }
}
