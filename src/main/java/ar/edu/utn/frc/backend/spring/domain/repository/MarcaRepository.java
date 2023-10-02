package ar.edu.utn.frc.backend.spring.domain.repository;

import java.util.List;

import ar.edu.utn.frc.backend.spring.domain.model.Marca;

public interface MarcaRepository {
	List<Marca> getAll();

	Marca get(String id);
}
