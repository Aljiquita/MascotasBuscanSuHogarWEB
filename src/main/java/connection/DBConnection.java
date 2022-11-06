
package connection;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {
    Connection connection;
    static String bd = "mascotas_perdidas_bd";
    static String port = "3307";
    static String login = "root";
    static String password = "admin";

    public DBConnection() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:" + this.port + "/" + this.bd;
            connection = DriverManager.getConnection(url,this.login,this.password);
            System.out.println("conexion establecida");
        } catch (Exception e)
        {
            System.out.println("Error de Conexion");
        }
    }
    
    public Connection getConnection(){
        return connection;
    }
    
    public void deconectar(){
        connection = null;
    }
    
    
    
}
