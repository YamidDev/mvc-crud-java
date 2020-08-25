package config;

import java.sql.*;

public class Connexion {

    Connection con;
    public Connexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
           
            con = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/registro?useSSL=false&serverTimezone=America/Bogota",
                    "root",
                    "admin123");
        }catch (Exception e) {
            System.err.println("error "+e.getMessage());
        }
    }

    public Connection getConnexion() {
        return con;
    }
}
