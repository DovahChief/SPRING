/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB_CON;

/**
 *
 * @author jose
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import beans.user;

public class Connexion {
    
    static final String CONTROLADOR = "com.mysql.jdbc.Driver"; 
    static final String CONN_STR = "jdbc:mysql://localhost:3306/red_social?autoReconnect=true&useSSL=false";
    static final String US_PAS = "accusr";
    
    private Connection conn = null;
    private Statement  stmt = null;
    private ResultSet  rset = null;
    private ArrayList<String> nom_correo = new ArrayList();
    
    
    public ResultSet fetch_users(){

        try {
            //carga controlador 
            Class.forName(CONTROLADOR);
            //estableciendo conexion
            conn = DriverManager.getConnection(CONN_STR, US_PAS, US_PAS);
            //creando el objeto statement para consultar
            stmt = conn.createStatement();
            //consulta 
            rset = stmt.executeQuery("SELECT * FROM users");
        }//fin del try//fin del try
        catch (SQLException | ClassNotFoundException e) {} //fin del catch

        return (rset);
    }
    
    
    public ArrayList<String> fetch_users(String nombre){
        
        
        try {
            //carga controlador 
            Class.forName(CONTROLADOR);         
            //estableciendo conexion
            conn = DriverManager.getConnection(CONN_STR, US_PAS, US_PAS);
            //creando el objeto statement para consultar
            stmt = conn.createStatement();        
            //consulta 
            rset = stmt.executeQuery("SELECT * FROM users where user_first = \'".concat(nombre).concat("\'"));
            while (rset.next()){
                nom_correo.add(rset.getObject(3).toString());
                nom_correo.add(rset.getObject(5).toString());
            }
                        
        }//fin del try//fin del try
        catch (SQLException | ClassNotFoundException e) {} //fin del catch
        return (nom_correo);
    }
    
    public boolean inserta(user nuevo){
        boolean exito = false;
        String sql_str = "INSERT INTO users (user_nickname, user_first, user_last, user_email)"
                        + " values ( \'" + nuevo.getUsername()+ "\', \'"+ nuevo.getUser_first()+ "\', \'"
                        + nuevo.getUser_last()+ "\', \'"+ nuevo.getUser_email()+"\')";  
        
        try {           
            Class.forName(CONTROLADOR);     //carga controlador        
            conn = DriverManager.getConnection(CONN_STR, US_PAS, US_PAS); //estableciendo conexion
            stmt = conn.createStatement();//creando el objeto statement a ejecutar
            stmt.executeUpdate(sql_str);     
            exito = true;            
        }//fin del try
        catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        } //fin del catch
        return (exito);
    }
}
