package ar.edu.utn.frc.backend.spring.domain.model;

public class Auto {
	private final String id;
	private final Modelo modelo;
	private final Chasis chasis;

	public Auto(final String id, final Modelo modelo, final Chasis chasis) {
		this.id = id;
		this.modelo = modelo;
		this.chasis = chasis;
	}

	public String getId() {
		return id;
	}

	public Modelo getModelo() {
		return modelo;
	}

	public Chasis getChasis() {
		return chasis;
	}
}
