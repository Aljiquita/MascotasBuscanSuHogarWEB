
package test;
import beans.Mascota;
import connection.DBConnection;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Date;

public class OperacionesBD {
    
    public static void main(String[] args) {
        listaMascotas();
        actualizarMascota(1, "lola");
        listaMascotas();
    }
    
    public static void actualizarMascota(int id, String nombre){
        DBConnection con = new DBConnection();
        String sql =  "UPDATE mascota SET nombre_mascota = ' " + nombre + " ' WHERE id_mascota =  " + id;
        
        try{
            Statement st = con.getConnection().createStatement();
            st.executeUpdate(sql);
        } catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        
        finally{
            con.deconectar();
        }
        
    }    
        
    public static void listaMascotas(){
        DBConnection con = new DBConnection();
        String sql =  "SELECT * FROM mascota";
        
        try{
            Statement st = con.getConnection().createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                int id_mascota = rs.getInt("id_mascota");
                String nombre_mascota = rs.getString("nombre_mascota");
                String raza_mascota = rs.getString("raza_mascota");
                String tipo_busqueda_mascota = rs.getString("tipo_busqueda_mascota");
                String edad_aproximada_mascota = rs.getString("edad_aproximada_mascota");
                String sexo_mascota = rs.getString("sexo_mascota");
                String color_mascota = rs.getString("color_mascota");
                String descripcion_mascota = rs.getString("descripcion_mascota");
                Date fecha_mascota = rs.getDate("fecha_mascota");
                String estado_busqueda_mascota = rs.getString("estado_busqueda_mascota");
                Blob foto_mascota = rs.getBlob("foto_mascota");
                int id_especie_mascota = rs.getInt("id_especie_mascota");
                int id_usuario_mascota = rs.getInt("id_usuario_mascota");
                Mascota mascota = new Mascota(id_mascota, nombre_mascota, raza_mascota, tipo_busqueda_mascota, edad_aproximada_mascota, sexo_mascota, color_mascota, descripcion_mascota, fecha_mascota, estado_busqueda_mascota , foto_mascota, id_especie_mascota, id_usuario_mascota );
                System.out.println(mascota.toString());
                
            }
            
            st.executeQuery(sql);
        
        } catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        
        finally{
            con.deconectar();
        }
    
    }
    
}
