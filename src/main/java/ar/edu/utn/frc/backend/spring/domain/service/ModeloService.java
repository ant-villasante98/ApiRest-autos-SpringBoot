package ar.edu.utn.frc.backend.spring.domain.service;

import ar.edu.utn.frc.backend.spring.domain.model.Modelo;

import java.util.List;

public interface ModeloService {
    List<Modelo> getAll();

    Modelo buscarModelo(String id);
}
