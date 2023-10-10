package ar.edu.utn.frc.backend.spring.domain.service;

import ar.edu.utn.frc.backend.spring.domain.model.Auto;
import ar.edu.utn.frc.backend.spring.domain.model.Chasis;
import ar.edu.utn.frc.backend.spring.domain.model.Modelo;
import ar.edu.utn.frc.backend.spring.domain.repository.AutoRepository;

import java.util.List;
import java.util.UUID;

public class DomainAutoService implements AutoService{

    private final AutoRepository autoRepository;

    public DomainAutoService(AutoRepository autoRepository) {
        this.autoRepository = autoRepository;
    }

    @Override
    public String crearAuto(Modelo modelo) {

        final Auto auto = new Auto(UUID.randomUUID().toString(),modelo , Chasis.nuevo() );
         autoRepository.save(auto);
         return "Auto creado";
    }

    @Override
    public Auto buscarAuto(String id) {
        return autoRepository.get(id);
    }

    @Override
    public List<Auto> listarAutos() {
        return autoRepository.getAll();
    }

    @Override
    public Auto modificarAuto(Auto auto) {
        return autoRepository.modified(auto);
    }

    @Override
    public void eliminarAuto(Auto auto) {
        autoRepository.delete(auto);
    }
}
