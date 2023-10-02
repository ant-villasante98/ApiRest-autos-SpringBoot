package ar.edu.utn.frc.backend.spring.domain.model;

import java.util.Objects;

public class Marca {
	private final String id;
	private final String nombre;

	public Marca(final String id, final String nombre) {
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
		return "Marca{" +
			"nombre='" + nombre + '\'' +
			'}';
	}

	@Override public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		Marca marca = (Marca) o;
		return Objects.equals(id, marca.id) && Objects.equals(nombre, marca.nombre);
	}

	@Override public int hashCode() {
		return Objects.hash(id, nombre);
	}
}
