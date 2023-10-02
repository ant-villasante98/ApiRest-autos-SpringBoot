package ar.edu.utn.frc.backend.spring.domain.service;

import ar.edu.utn.frc.backend.spring.domain.model.Marca;

import java.util.List;

public interface MarcaService {
    List<Marca> listarMarcas();

    Marca buscarMarca(String id);

}
