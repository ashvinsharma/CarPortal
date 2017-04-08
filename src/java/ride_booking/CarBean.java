package ride_booking;

import java.io.Serializable;

public class CarBean implements Serializable{
    private String owner;
    private String carName;
    private String fromString;
    private String toString;
    
    public String getOwner() {
        return owner;
    }
    public void setOwner(String owner) {
        this.owner = owner;
    }
    public String getCarName() {
        return carName;
    }
    public void setCarName(String carName) {
        this.carName = carName;
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
}
