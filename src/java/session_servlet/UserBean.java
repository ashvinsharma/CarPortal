package session_servlet;

import java.io.Serializable;

public class UserBean implements Serializable {

    private String uid;
    private String pass;
    private String firstName;
    private String surName;
    private int group, count;
    private String type;
    private String car;
    private String email;
    private String fromString, toString;
    public boolean valid;

    public void incCount(){
        count += 1;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public String getFromString() {
        return fromString;
    }
    public void setFromString(String fromString) {
        this.fromString = fromString;
    }
    public String getToString() {
        return toString;
    }
    public void setToString(String toString) {
        this.toString = toString;
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
    public int getGroup() {
        return group;
    }
    public void setGroup(int newGroup) {
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
