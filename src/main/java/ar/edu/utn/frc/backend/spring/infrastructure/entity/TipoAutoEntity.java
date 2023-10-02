package ar.edu.utn.frc.backend.spring.infrastructure.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import ar.edu.utn.frc.backend.spring.domain.model.TipoAuto;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "TIPO_AUTO")
public class TipoAutoEntity {
	@Id
	private String id;
	private String nombre;

	public TipoAutoEntity() {
	}
	public TipoAutoEntity(String id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}

	public static TipoAutoEntity from(TipoAuto tipoAuto){
		return new TipoAutoEntity(tipoAuto.getId(), tipoAuto.getNombre());
	}

	public TipoAuto toTipoAuto(){
		return new TipoAuto(id, nombre);
	}
}
