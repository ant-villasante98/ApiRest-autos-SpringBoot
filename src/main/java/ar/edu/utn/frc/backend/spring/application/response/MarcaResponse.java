package ar.edu.utn.frc.backend.spring.application.response;

import ar.edu.utn.frc.backend.spring.domain.model.Marca;

public class MarcaResponse {
    private String id;
    private String nombre;

    public MarcaResponse(){
        super();
    }

    public MarcaResponse(String id, String nombre) {
        this();
        this.id = id;
        this.nombre = nombre;
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

    public static MarcaResponse from(Marca marca){
        return new MarcaResponse(marca.getId(), marca.getNombre());
    }
}
