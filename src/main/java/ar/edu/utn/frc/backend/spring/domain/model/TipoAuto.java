package ar.edu.utn.frc.backend.spring.domain.model;

import java.util.Objects;

public class TipoAuto {
	private final String id;
	private final String nombre;

	public TipoAuto(String id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}

	public String getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	@Override public String toString() {
		return "TipoAuto{" +
			"nombre='" + nombre + '\'' +
			'}';
	}

	@Override public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		TipoAuto tipoAuto = (TipoAuto) o;
		return Objects.equals(id, tipoAuto.id) && Objects.equals(nombre, tipoAuto.nombre);
	}

	@Override public int hashCode() {
		return Objects.hash(id, nombre);
	}
}
