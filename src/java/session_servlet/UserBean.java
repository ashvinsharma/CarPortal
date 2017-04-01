package session_servlet;

public class UserBean implements java.io.Serializable{

    private String uid;
    private String pass;
    private String firstName;
    private String lastName;
    private String group;
    public boolean valid;

    public UserBean() {
    }

    public String getUsername() {
        return uid;
    }
    public void setUserName(String newUsername) {
        uid = newUsername;
    }
    public String getPassword() {
        return pass;
    }
    public void setPassword(String newPassword) {
        pass = newPassword;
    }
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String newFirstName) {
        firstName = newFirstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String newLastName) {
        lastName = newLastName;
    }
    public String getGroup(){
        return group;
    }
    public void setGroup(String newGroup){
        group = newGroup;
    }
    public boolean isValid() {
        return valid;
    }
    public void setValid(boolean newValid) {
        valid = newValid;
    }
}