package ar.edu.utn.frc.backend.spring.infrastructure.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

import ar.edu.utn.frc.backend.spring.domain.model.Modelo;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "MODELO")
public class ModeloEntity {
	@Id
	private String id;
	private String nombre;
	private Integer anio;
	@OneToOne
	@JoinColumn(name = "ID_MARCA")
	private MarcaEntity marca;
	@OneToMany(fetch = FetchType.EAGER)
	@JoinTable(
		name = "MODELO_TIPO_AUTO",
		joinColumns = @JoinColumn(name = "ID_MODELO"),
		inverseJoinColumns = @JoinColumn(name = "ID_TIPO_AUTO"))
	private List<TipoAutoEntity> tiposAuto;

	public ModeloEntity() {
	}

	public void setId(String id) {
		this.id = id;
	}

	public ModeloEntity(String id, String nombre, Integer anio, MarcaEntity marca, List<TipoAutoEntity> tiposAuto) {
		this.id = id;
		this.nombre = nombre;
		this.anio = anio;
		this.marca = marca;
		this.tiposAuto = tiposAuto;
	}

	public static ModeloEntity from(Modelo modelo) {
		return new ModeloEntity(
			modelo.getId(),
			modelo.getNombre(),
			modelo.getAnio(),
			MarcaEntity.from(modelo.getMarca()),
			modelo.getTipos().stream()
				.map(TipoAutoEntity::from)
				.toList());
	}

	public Modelo toModelo() {
		return new Modelo(
			id,
			nombre,
			anio,
			marca.toMarca(),
			tiposAuto.stream()
				.map(TipoAutoEntity::toTipoAuto)
				.toList());
	}
}
