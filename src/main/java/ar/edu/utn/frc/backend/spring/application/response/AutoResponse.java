package ar.edu.utn.frc.backend.spring.application.response;

import ar.edu.utn.frc.backend.spring.domain.model.Auto;
import ar.edu.utn.frc.backend.spring.domain.model.Chasis;
import ar.edu.utn.frc.backend.spring.domain.model.Modelo;
import lombok.Data;

@Data
public class AutoResponse {
    private  String id;
    private  Modelo modelo;
    private  Chasis chasis;

    public AutoResponse(){
        super();
    }

    public AutoResponse(final String id, final Modelo modelo, final Chasis chasis) {
        this.id = id;
        this.modelo = modelo;
        this.chasis = chasis;
    }

    public static AutoResponse from(Auto auto){
        return new AutoResponse(auto.getId(),auto.getModelo(),auto.getChasis());
    }

}
