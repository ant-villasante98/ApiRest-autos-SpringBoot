package ar.edu.utn.frc.backend.spring.domain.service;

import ar.edu.utn.frc.backend.spring.domain.model.Marca;
import ar.edu.utn.frc.backend.spring.domain.repository.MarcaRepository;

import java.util.List;


public class DomainMarcaService implements MarcaService {

    private final MarcaRepository marcaRepository;

    public DomainMarcaService(MarcaRepository marcaRepository) {
        this.marcaRepository = marcaRepository;
    }

    @Override
    public List<Marca> listarMarcas() {
        return marcaRepository.getAll();
    }

    @Override
    public Marca buscarMarca(String id) {
        return marcaRepository.get(id);
    }
}
