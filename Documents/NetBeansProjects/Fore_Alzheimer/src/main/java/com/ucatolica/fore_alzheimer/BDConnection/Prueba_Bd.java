/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucatolica.fore_alzheimer.BDConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Daniela
 */
public class Prueba_Bd {

    public static void main(String args[]) {
        try {
            String sURL = "jdbc:mysql://localhost:3306/arcadb?serverTimezone=" +TimeZone.getDefault().getID();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    sURL, "root", "root");
//here sonoo is database name, root is username and password  
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select Num_Documento from arcadb.usuario");
            while (rs.next()) {
                System.out.println(rs.getInt(1));
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
