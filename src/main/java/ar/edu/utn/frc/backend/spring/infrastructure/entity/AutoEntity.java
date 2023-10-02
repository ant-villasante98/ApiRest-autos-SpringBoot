package ar.edu.utn.frc.backend.spring.infrastructure.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

import ar.edu.utn.frc.backend.spring.domain.model.Auto;
import ar.edu.utn.frc.backend.spring.domain.model.Chasis;

@Entity
@Table(name = "AUTO")
public class AutoEntity {
	@Id
	private String id;
	private String chasis;
	@JoinColumn(name = "ID_MODELO")
		@OneToOne
	private ModeloEntity modelo;

	public AutoEntity() {
	}

	public AutoEntity(String id, String chasis, ModeloEntity modelo) {
		this.id = id;
		this.chasis = chasis;
		this.modelo = modelo;
	}

	public Auto toAuto(){
		return new Auto(id, modelo.toModelo(), new Chasis(chasis));
	}
}
