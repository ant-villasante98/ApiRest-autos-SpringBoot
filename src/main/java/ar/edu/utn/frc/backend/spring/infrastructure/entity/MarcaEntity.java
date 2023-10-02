package ar.edu.utn.frc.backend.spring.infrastructure.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.Table;

import ar.edu.utn.frc.backend.spring.domain.model.Marca;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "MARCA")
public class MarcaEntity {
	@Id
	private String id;
	@Column(name = "NOMBRE")
	private String nombre;

	public MarcaEntity() {
	}
	public MarcaEntity(String id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}

	public static MarcaEntity from(Marca marca){
		return new MarcaEntity(marca.getId(), marca.getNombre());
	}

	public Marca toMarca(){
		return new Marca(id, nombre);
	}
}
