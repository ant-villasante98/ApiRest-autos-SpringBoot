package ar.edu.utn.frc.backend.spring.infrastructure.repository;

import java.util.List;

import org.springframework.stereotype.Component;

import ar.edu.utn.frc.backend.spring.domain.model.Marca;
import ar.edu.utn.frc.backend.spring.domain.repository.MarcaRepository;
import ar.edu.utn.frc.backend.spring.infrastructure.dao.JpaMarcaDao;
import ar.edu.utn.frc.backend.spring.infrastructure.entity.MarcaEntity;

@Component
public class JpaMarcaRepository implements MarcaRepository {

	private final JpaMarcaDao marcaDao;

	public JpaMarcaRepository(JpaMarcaDao marcaDao) {
		this.marcaDao = marcaDao;
	}

	@Override public List<Marca> getAll() {
		return marcaDao.findAll()
			.stream()
			.map(MarcaEntity::toMarca)
			.toList();
	}

	@Override
	public Marca get(String id) {
		final MarcaEntity marcaEntity = marcaDao.findById(id).orElseThrow();
		return marcaEntity.toMarca();
	}
}
