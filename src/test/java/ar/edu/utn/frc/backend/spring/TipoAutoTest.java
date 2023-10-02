package ar.edu.utn.frc.backend.spring;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import ar.edu.utn.frc.backend.spring.domain.model.TipoAuto;
import ar.edu.utn.frc.backend.spring.domain.repository.TipoAutoRepository;


@SpringJUnitConfig
@SpringBootTest
public class TipoAutoTest {

	@Autowired
	private TipoAutoRepository tipoAutoRepository;

	@Test
	public void obtieneLaCantidadTiposDeAutosCorrectamente() {

		assertEquals(7, tipoAutoRepository.getAll().size());
	}

	@Test
	public void elTipoConvertibleEsCorrecto() {
		final TipoAuto tipoAutoEsperado = new TipoAuto("dfdb092b-6e6b-466e-bf32-d1344eb645bb", "Convertible");
		final TipoAuto tipoAuto = tipoAutoRepository
			.getAll()
			.stream()
			.filter(tipo -> tipo.getNombre().equalsIgnoreCase("Convertible"))
			.findFirst()
			.orElseThrow();
		assertEquals(tipoAutoEsperado, tipoAuto);
	}
}
