package com.DB;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnect {
    
    private static Connection conn;

    // Static method to get the database connection
    public static Connection getConn() {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app", "root", "Devendra@1234");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Connection to database failed.");
            e.printStackTrace();
        }
        return conn;
    }
}
