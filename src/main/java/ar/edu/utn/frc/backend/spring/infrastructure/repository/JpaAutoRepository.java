package ar.edu.utn.frc.backend.spring.infrastructure.repository;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Component;

import ar.edu.utn.frc.backend.spring.domain.model.Auto;
import ar.edu.utn.frc.backend.spring.domain.repository.AutoRepository;
import ar.edu.utn.frc.backend.spring.infrastructure.dao.JpaAutoDao;
import ar.edu.utn.frc.backend.spring.infrastructure.entity.AutoEntity;
import ar.edu.utn.frc.backend.spring.infrastructure.entity.ModeloEntity;

@Component
public class JpaAutoRepository implements AutoRepository {
	private final JpaAutoDao autoDao;

	public JpaAutoRepository(JpaAutoDao autoDao) {
		this.autoDao = autoDao;
	}

	@Override public List<Auto> getAll() {
		return autoDao.findAll()
			.stream()
			.map(AutoEntity::toAuto)
			.collect(Collectors.toList());
	}



	@Override public void save(Auto auto) {
		autoDao.save(new AutoEntity(
			auto.getId(),
			auto.getChasis().getNumero(),
			ModeloEntity.from(auto.getModelo())
		));
	}

	@Override
	public Auto get(String id) {
		final AutoEntity auto = autoDao.getById(id);
		return auto.toAuto();
	}

	@Override
	public Auto modified(Auto auto) {
		final AutoEntity autoEntity = autoDao.save(new AutoEntity(
				auto.getId(),
				auto.getChasis().getNumero(),
				ModeloEntity.from(auto.getModelo())
		));
		return autoEntity.toAuto();
	}

	@Override
	public void delete(Auto auto) {
		autoDao.delete(new AutoEntity(
				auto.getId(),
				auto.getChasis().getNumero(),
				ModeloEntity.from(auto.getModelo())));

	}


}
