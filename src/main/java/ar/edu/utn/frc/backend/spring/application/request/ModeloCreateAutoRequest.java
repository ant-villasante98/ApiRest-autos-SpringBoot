package ar.edu.utn.frc.backend.spring.application.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Value;


@AllArgsConstructor
@NoArgsConstructor
public class ModeloCreateAutoRequest {
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
