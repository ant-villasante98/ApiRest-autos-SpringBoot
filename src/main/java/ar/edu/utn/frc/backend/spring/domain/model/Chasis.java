package ar.edu.utn.frc.backend.spring.domain.model;

import java.util.UUID;

public final class Chasis {
	private final String numero;
	public Chasis(final String numero) {
		this.numero = numero;
	}
	public static Chasis nuevo(){
		return new Chasis(UUID.randomUUID().toString());
	}
	public String getNumero() {
		return numero;
	}
}
