package ar.edu.utn.frc.backend.spring;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import ar.edu.utn.frc.backend.spring.domain.model.Marca;
import ar.edu.utn.frc.backend.spring.domain.model.Modelo;
import ar.edu.utn.frc.backend.spring.domain.model.TipoAuto;
import ar.edu.utn.frc.backend.spring.domain.repository.ModeloRepository;


@SpringJUnitConfig
@SpringBootTest
public class ModeloTest {

	@Autowired
	ModeloRepository modeloRepository;

	@Test
	public void obtieneElModeloCorrecto() {
		final Modelo modeloEsperado = new Modelo(
			"335609c3-0dff-4913-84a9-7c8271a361ab",
			"2 Series",
			2021,
			new Marca("39e8d654-f99e-46b1-9012-c15d27a32825", "BMW"),
			List.of(
				new TipoAuto("02f50ef7-98db-40f9-a8bb-28e8277bac37", "Sedan"),
				new TipoAuto("09b51433-eca3-4d5a-b3a1-5ee3cc5b2127", "Coupe"),
				new TipoAuto("dfdb092b-6e6b-466e-bf32-d1344eb645bb", "Convertible")
			)
		);
		final Modelo modelo = modeloRepository.get("335609c3-0dff-4913-84a9-7c8271a361ab");

		assertEquals(modeloEsperado, modelo);
	}
}
