package ar.edu.utn.frc.backend.spring.domain.repository;

import java.util.List;

import ar.edu.utn.frc.backend.spring.domain.model.TipoAuto;

public interface TipoAutoRepository {
	List<TipoAuto> getAll();
}
