package ar.edu.utn.frc.backend.spring.application.request;

import ar.edu.utn.frc.backend.spring.domain.model.Auto;
import ar.edu.utn.frc.backend.spring.domain.model.Chasis;
import ar.edu.utn.frc.backend.spring.domain.model.Modelo;

public class AutoRequest {
    private final String id;
    private final Modelo modelo;
    private final Chasis chasis;

    public AutoRequest(final String id, final Modelo modelo, final Chasis chasis) {
        this.id = id;
        this.modelo = modelo;
        this.chasis = chasis;
    }

    public String getId() {
        return id;
    }

    public Modelo getModelo() {
        return modelo;
    }

    public Chasis getChasis() {
        return chasis;
    }

    public Auto toAuto(){
        return  new Auto(
                this.id,
                this.modelo,
                this.chasis
        );
    }
}

