/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Mega_Cab.Model;

/**
 *
 * @author NEW
 */
public class Customer {
    private String cusId;
    private String password;
    private String username;
    private String address;
    private String nic;
    private String fullName;
    private String email;
    private String contactNo;

    // Constructor
    public Customer(String cusId, String password, String username, String address, String nic, String fullName, String email) {
        this.cusId = cusId;
        this.password = password;
        this.username = username;
        this.address = address;
        this.nic = nic;
        this.fullName = fullName;
        this.email = email;
        this.contactNo = contactNo;
    }

    // Getters and Setters
    public String getCusId() {
        return cusId;
    }

    public void setCusId(String cusId) {
        this.cusId = cusId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "cusId='" + cusId + '\'' +
                ", username='" + username + '\'' +
                ", address='" + address + '\'' +
                ", nic='" + nic + '\'' +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", contactNo='" + contactNo + '\'' +
                '}';
    }

    
}
