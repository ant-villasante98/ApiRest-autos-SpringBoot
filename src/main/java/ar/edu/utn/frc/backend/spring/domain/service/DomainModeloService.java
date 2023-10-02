package ar.edu.utn.frc.backend.spring.domain.service;

import ar.edu.utn.frc.backend.spring.domain.model.Modelo;
import ar.edu.utn.frc.backend.spring.domain.repository.ModeloRepository;

import java.util.List;

public class DomainModeloService implements ModeloService{

    private final ModeloRepository modeloRepository;

    public DomainModeloService(ModeloRepository modeloRepository) {
        this.modeloRepository = modeloRepository;
    }

    @Override
    public List<Modelo> getAll() {
        return modeloRepository.getAll();
    }

    @Override
    public Modelo buscarModelo(String id) {
        return modeloRepository.get(id);
    }


}
