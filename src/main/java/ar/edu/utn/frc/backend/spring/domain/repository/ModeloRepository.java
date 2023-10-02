package ar.edu.utn.frc.backend.spring.domain.repository;

import ar.edu.utn.frc.backend.spring.domain.model.Modelo;

import java.util.List;

public interface ModeloRepository {
	Modelo get(String id);

	List<Modelo> getAll();
}
