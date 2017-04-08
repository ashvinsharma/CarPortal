package profile_servlet;
import java.sql.*;
import session_servlet.UserBean;
public class ProfileDAO{
    static Connection currentConnection = null;
    static Statement currentStatement = null;
    public static boolean updatePass(UserBean user, String newPassword){
        boolean flag=false;
        String updateQuery = "UPDATE `java-test`.`users` SET `pass`='"
                + newPassword +"' WHERE `uid`='" + user.getUsername() +"';";
        
        System.out.println("Query Entered: " + updateQuery);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
            currentStatement = currentConnection.createStatement();
            currentStatement.executeUpdate(updateQuery);
            flag=true;
        }catch(Exception e){System.out.println(e);}
        finally{
            if(currentConnection != null){
                try{currentConnection = null;}
                catch(Exception e){System.out.println("Current Connection: " + e);}
            }else if(currentStatement != null){
                try{currentStatement = null;}
                catch(Exception e){System.out.println("Current Statement: " + e);}
            }
        }
        return flag;
    }
    public static boolean updateName(UserBean user, String newFirstName, String newSurname){
        boolean flag=false;
        String updateQuery = "UPDATE `java-test`.`users` SET `firstname`='"
                + newFirstName +"', `surname`='" + newSurname +"' WHERE `uid`='" + user.getUsername() +"';";
        
        System.out.println("Query Entered: " + updateQuery);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            currentConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java-test", "root", "localhost");
            currentStatement = currentConnection.createStatement();
            currentStatement.executeUpdate(updateQuery);
            flag=true;
        }catch(Exception e){System.out.println(e);}
        finally{
            if(currentConnection != null){
                try{currentConnection = null;}
                catch(Exception e){System.out.println("Current Connection: " + e);}
            }else if(currentStatement != null){
                try{currentStatement = null;}
                catch(Exception e){System.out.println("Current Statement: " + e);}
            }
        }
        return flag;
    }
}