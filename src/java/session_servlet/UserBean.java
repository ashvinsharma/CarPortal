package session_servlet;

import java.io.Serializable;

public class UserBean implements Serializable {

    private String uid;
    private String pass;
    private String firstName;
    private String surName;
    private String group;
    private String type;
    private String car;
    private String email;
    public boolean valid;

    public UserBean() {
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String newEmail) {
        email = newEmail;
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
    public String getSurName() {
        return surName;
    }
    public void setSurName(String newLastName) {
        surName = newLastName;
    }
    public String getGroup() {
        return group;
    }
    public void setGroup(String newGroup) {
        group = newGroup;
    }
    public String getType() {
        if (type == null) {
            setType("lite");
        }
        return type;
    }
    public void setType(String newType) {
        type = newType;
    }
    public String getCar() {
        return car;
    }
    public void setCar(String newCar) {
        car = newCar;
    }
    public boolean isValid() {
        return valid;
    }
    public void setValid(boolean newValid) {
        valid = newValid;
    }
}
