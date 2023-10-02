package ar.edu.utn.frc.backend.spring.infrastructure.repository;

import org.springframework.stereotype.Component;

import ar.edu.utn.frc.backend.spring.domain.model.Modelo;
import ar.edu.utn.frc.backend.spring.domain.repository.ModeloRepository;
import ar.edu.utn.frc.backend.spring.infrastructure.dao.JpaModeloDao;
import ar.edu.utn.frc.backend.spring.infrastructure.entity.ModeloEntity;

import java.util.List;

@Component
public class JpaModeloRepository implements ModeloRepository {
	private final JpaModeloDao modeloDao;

	public JpaModeloRepository(JpaModeloDao modeloDao) {
		this.modeloDao = modeloDao;
	}

	@Override
	public Modelo get(String id) {
		final ModeloEntity modeloEntity = modeloDao.findById(id).orElseThrow();
		return modeloEntity.toModelo();
	}

	@Override
	public List<Modelo> getAll() {
		return modeloDao.findAll()
				.stream()
				.map(ModeloEntity::toModelo)
				.toList();
	}
}
