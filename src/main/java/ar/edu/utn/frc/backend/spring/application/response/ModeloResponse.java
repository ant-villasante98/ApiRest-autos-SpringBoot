package ar.edu.utn.frc.backend.spring.application.response;

import ar.edu.utn.frc.backend.spring.domain.model.Marca;
import ar.edu.utn.frc.backend.spring.domain.model.Modelo;

public class ModeloResponse {
    private  String id;
    private  String nombre;
    private  int anio;
    private  Marca marca;
    public ModeloResponse(){
        super();
    }
    public ModeloResponse(String id,String nombre, int anio , Marca marca){
        this.id = id;
        this.nombre = nombre;
        this.anio = anio;
        this.marca = marca;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public Marca getMarca() {
        return marca;
    }

    public void setMarca(Marca marca) {
        this.marca = marca;
    }

    public static ModeloResponse from(Modelo modelo){
        return new ModeloResponse(modelo.getId(), modelo.getNombre(), modelo.getAnio(),modelo.getMarca());
    }
}
