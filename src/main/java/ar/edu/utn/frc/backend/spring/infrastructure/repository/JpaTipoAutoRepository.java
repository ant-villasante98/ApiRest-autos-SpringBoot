package ar.edu.utn.frc.backend.spring.infrastructure.repository;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Component;

import ar.edu.utn.frc.backend.spring.domain.model.TipoAuto;
import ar.edu.utn.frc.backend.spring.domain.repository.TipoAutoRepository;
import ar.edu.utn.frc.backend.spring.infrastructure.dao.JpaTipoAutoDao;
import ar.edu.utn.frc.backend.spring.infrastructure.entity.TipoAutoEntity;

@Component
public class JpaTipoAutoRepository implements TipoAutoRepository {
	private final JpaTipoAutoDao tipoAutoDao;

	public JpaTipoAutoRepository(JpaTipoAutoDao tipoAutoDao) {
		this.tipoAutoDao = tipoAutoDao;
	}

	@Override public List<TipoAuto> getAll() {
		return tipoAutoDao.findAll()
			.stream()
			.map(TipoAutoEntity::toTipoAuto)
			.collect(Collectors.toList());
	}
}
