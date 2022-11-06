
package beans;
import java.sql.Blob;
import java.sql.Date;


public class Mascota {
    private int id_mascota;
    private String nombre_mascota;
    private String raza_mascota;
    private String tipo_busqueda_mascota;
    private String edad_aproximada_mascota;
    private String sexo_mascota;
    private String color_mascota;
    private String descripcion_mascota;
    private Date fecha_mascota;
    private String estado_busqueda_mascota ;
    private Blob foto_mascota ;
    private int id_especie_mascota ;
    private int id_usuario_mascota ;

    
    public Mascota(int id_mascota, String nombre_mascota, String raza_mascota, String tipo_busqueda_mascota, String edad_aproximada_mascota, String sexo_mascota, String color_mascota, String descripcion_mascota, Date fecha_mascota, String estado_busqueda_mascota, Blob foto_mascota, int id_especie_mascota, int id_usuario_mascota) {
        this.id_mascota = id_mascota;
        this.nombre_mascota = nombre_mascota;
        this.raza_mascota = raza_mascota;
        this.tipo_busqueda_mascota = tipo_busqueda_mascota;
        this.edad_aproximada_mascota = edad_aproximada_mascota;
        this.sexo_mascota = sexo_mascota;
        this.color_mascota = color_mascota;
        this.descripcion_mascota = descripcion_mascota;
        this.fecha_mascota = fecha_mascota;
        this.estado_busqueda_mascota = estado_busqueda_mascota;
        this.foto_mascota = foto_mascota;
        this.id_especie_mascota = id_especie_mascota;
        this.id_usuario_mascota = id_usuario_mascota;
    }

    public int getId_mascota() {
        return id_mascota;
    }

    public void setId_mascota(int id_mascota) {
        this.id_mascota = id_mascota;
    }

    public String getNombre_mascota() {
        return nombre_mascota;
    }

    public void setNombre_mascota(String nombre_mascota) {
        this.nombre_mascota = nombre_mascota;
    }

    public String getRaza_mascota() {
        return raza_mascota;
    }

    public void setRaza_mascota(String raza_mascota) {
        this.raza_mascota = raza_mascota;
    }

    public String getTipo_busqueda_mascota() {
        return tipo_busqueda_mascota;
    }

    public void setTipo_busqueda_mascota(String tipo_busqueda_mascota) {
        this.tipo_busqueda_mascota = tipo_busqueda_mascota;
    }

    public String getEdad_aproximada_mascota() {
        return edad_aproximada_mascota;
    }

    public void setEdad_aproximada_mascota(String edad_aproximada_mascota) {
        this.edad_aproximada_mascota = edad_aproximada_mascota;
    }

    public String getSexo_mascota() {
        return sexo_mascota;
    }

    public void setSexo_mascota(String sexo_mascota) {
        this.sexo_mascota = sexo_mascota;
    }

    public String getColor_mascota() {
        return color_mascota;
    }

    public void setColor_mascota(String color_mascota) {
        this.color_mascota = color_mascota;
    }

    public String getDescripcion_mascota() {
        return descripcion_mascota;
    }

    public void setDescripcion_mascota(String descripcion_mascota) {
        this.descripcion_mascota = descripcion_mascota;
    }

    public Date getFecha_mascota() {
        return fecha_mascota;
    }

    public void setFecha_mascota(Date fecha_mascota) {
        this.fecha_mascota = fecha_mascota;
    }

    public String getEstado_busqueda_mascota() {
        return estado_busqueda_mascota;
    }

    public void setEstado_busqueda_mascota(String estado_busqueda_mascota) {
        this.estado_busqueda_mascota = estado_busqueda_mascota;
    }

    public Blob getFoto_mascota() {
        return foto_mascota;
    }

    public void setFoto_mascota(Blob foto_mascota) {
        this.foto_mascota = foto_mascota;
    }

    public int getId_especie_mascota() {
        return id_especie_mascota;
    }

    public void setId_especie_mascota(int id_especie_mascota) {
        this.id_especie_mascota = id_especie_mascota;
    }

    public int getId_usuario_mascota() {
        return id_usuario_mascota;
    }

    public void setId_usuario_mascota(int id_usuario_mascota) {
        this.id_usuario_mascota = id_usuario_mascota;
    }

    @Override
    public String toString() {
        return "Mascota{" + "id_mascota=" + id_mascota + ", nombre_mascota=" + nombre_mascota + ", raza_mascota=" + raza_mascota + ", tipo_busqueda_mascota=" + tipo_busqueda_mascota + ", edad_aproximada_mascota=" + edad_aproximada_mascota + ", sexo_mascota=" + sexo_mascota + ", color_mascota=" + color_mascota + ", descripcion_mascota=" + descripcion_mascota + ", fecha_mascota=" + fecha_mascota + ", estado_busqueda_mascota=" + estado_busqueda_mascota + ", foto_mascota=" + foto_mascota + ", id_especie_mascota=" + id_especie_mascota + ", id_usuario_mascota=" + id_usuario_mascota + '}';
    }

    

    
    
    
}
