package ar.edu.utn.frc.backend.spring;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import ar.edu.utn.frc.backend.spring.domain.repository.MarcaRepository;
import ar.edu.utn.frc.backend.spring.domain.model.Marca;

@SpringJUnitConfig
@SpringBootTest
public class MarcaTest {
	@Autowired
	private MarcaRepository marcaRepository;


	@Test
	public void obtieneLaCantidadMarcasCorrectamente() {
		assertEquals(9, marcaRepository.getAll().size());
	}

	@Test
	public void laMarcaAudiEsCorrecta() {
		final Marca marcaEsperada = new Marca("558456eb-0633-4547-b43d-81c353c4a4b6", "Audi");
		final Marca marca = marcaRepository
			.getAll()
			.stream()
			.filter(tipo -> tipo.getNombre().equalsIgnoreCase("Audi"))
			.findFirst()
			.orElseThrow();
		assertEquals(marcaEsperada, marca);
	}
}
