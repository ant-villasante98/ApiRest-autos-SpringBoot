package ar.edu.utn.frc.backend.spring.domain.service;

import java.util.List;

import ar.edu.utn.frc.backend.spring.domain.model.Auto;
import ar.edu.utn.frc.backend.spring.domain.model.Modelo;

public interface AutoService {
	String crearAuto(Modelo modelo);

	Auto buscarAuto(String id);

	List<Auto> listarAutos();

	Auto modificarAuto(Auto auto);

	void eliminarAuto(Auto auto);
}
