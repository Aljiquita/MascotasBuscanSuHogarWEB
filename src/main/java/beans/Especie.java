
package beans;


public class Especie {
    private int id_especie;
    private String especie;

    public Especie(int id_especie, String especie) {
        this.id_especie = id_especie;
        this.especie = especie;
    }

    public int getId_especie() {
        return id_especie;
    }

    public void setId_especie(int id_especie) {
        this.id_especie = id_especie;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
        
    }

    @Override
    public String toString() {
        return "Especie{" + "id_especie=" + id_especie + ", especie=" + especie + '}';
    }
    
    
}
