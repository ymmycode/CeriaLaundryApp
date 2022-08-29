/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package program;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;

/**
 *
 * @author 1
 */
public class koneksi {
    Connection connect;
    Statement stmt;
    
    String url = "jdbc:mysql://localhost/ceriadb";
    String user = "root";
    String pass = "";
    
    public void Config()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(url, user, pass);
            stmt = connect.createStatement();
            System.out.print("Connection Success");
        }
        catch(ClassNotFoundException | SQLException e)
        {
            System.out.print("Koneksi Gagal" +e.getMessage());
        }
    }
}
