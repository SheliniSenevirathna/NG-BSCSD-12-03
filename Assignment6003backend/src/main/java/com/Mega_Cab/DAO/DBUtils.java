/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Mega_Cab.DAO;

import com.Mega_Cab.Model.Customer;
import java.sql.*;
import java.util.List;

public class DBUtils {
     private static final String URL = "jdbc:mysql://localhost:3306/mega_cab";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static boolean addCustomer(Customer customer) {
        String query = "INSERT INTO tblcustomer (Cus_ID, Password, Username, Address, NIC, Fullname, Email, Contact_No) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mega_cab", "root", "");
             PreparedStatement pstmt = conn.prepareStatement(query)) {
           // pstmt.setInt(1, customer.getCusId());
            pstmt.setString(2, customer.getPassword());
            pstmt.setString(3, customer.getUsername());
            pstmt.setString(4, customer.getAddress());
            pstmt.setString(5, customer.getNic());
            pstmt.setString(6, customer.getFullName());
            pstmt.setString(7, customer.getEmail());
            pstmt.setString(8, customer.getContactNo());
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean updateCustomer(Customer customer) {
        String query = "UPDATE tblcustomer SET Password=?, Username=?, Address=?, NIC=?, Fullname=?, Email=?, Contact_No=? WHERE Cus_ID=?";
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mega_cab", "root", "");
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, customer.getPassword());
            pstmt.setString(2, customer.getUsername());
            pstmt.setString(3, customer.getAddress());
            pstmt.setString(4, customer.getNic());
            pstmt.setString(5, customer.getFullName());
            pstmt.setString(6, customer.getEmail());
            pstmt.setString(7, customer.getContactNo());
            //pstmt.setInt(8, customer.getCusId());
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deleteCustomer(int cusId) {
        String query = "DELETE FROM tblcustomer WHERE Cus_ID=?";
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mega_cab", "root", "");
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setInt(1, cusId);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Customer getCustomerById(int cusId) {
        String query = "SELECT * FROM tblcustomer WHERE Cus_ID=?";
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mega_cab", "root", "");
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setInt(1, cusId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return new Customer(
                        //rs.getInt("Cus_ID"),
                        rs.getString("Password"),
                        rs.getString("Username"),
                        rs.getString("Address"),
                        rs.getString("NIC"),
                        rs.getString("Fullname"),
                        rs.getString("Email"),
                        rs.getString("Contact_No")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Customer> getCustomers() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Customer getCustomer(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
    

