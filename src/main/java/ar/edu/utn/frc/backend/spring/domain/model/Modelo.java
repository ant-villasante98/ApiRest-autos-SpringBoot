package ar.edu.utn.frc.backend.spring.domain.model;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

public class Modelo {
	private final String id;
	private final String nombre;
	private final int anio;
	private final Marca marca;
	private final List<TipoAuto> tipos;

	public Modelo(String id, String nombre, int anio, Marca marca, List<TipoAuto> tipos) {
		this.id = id;
		this.nombre = nombre;
		this.anio = anio;
		this.marca = marca;
		this.tipos = tipos;
	}

	public String getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public int getAnio() {
		return anio;
	}

	public Marca getMarca() {
		return marca;
	}

	public List<TipoAuto> getTipos() {
		return Collections.unmodifiableList(tipos);
	}


	@Override
	public String toString() {
		return "Modelo{" + "nombre='" + nombre + '\'' +
			", anio=" + anio +
			", marca=" + marca +
			", tipos=" + tipos +
			'}';
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		Modelo modelo = (Modelo) o;
		return anio == modelo.anio && Objects.equals(id, modelo.id) && Objects.equals(nombre, modelo.nombre) && Objects.equals(marca, modelo.marca) && Objects.equals(tipos, modelo.tipos);
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, nombre, anio, marca, tipos);
	}
}
