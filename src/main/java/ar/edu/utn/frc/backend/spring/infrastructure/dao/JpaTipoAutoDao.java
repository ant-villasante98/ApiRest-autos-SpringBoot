package ar.edu.utn.frc.backend.spring.infrastructure.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ar.edu.utn.frc.backend.spring.infrastructure.entity.TipoAutoEntity;

@Repository
public interface JpaTipoAutoDao extends JpaRepository<TipoAutoEntity, String> {
}
