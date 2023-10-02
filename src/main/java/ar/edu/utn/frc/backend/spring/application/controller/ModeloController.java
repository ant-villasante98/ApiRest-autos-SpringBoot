package ar.edu.utn.frc.backend.spring.application.controller;

import ar.edu.utn.frc.backend.spring.application.ConcesionariaApplication;
import ar.edu.utn.frc.backend.spring.application.response.ModeloResponse;
import ar.edu.utn.frc.backend.spring.domain.model.Modelo;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/modelos")
public class ModeloController {
    private final ConcesionariaApplication application;

    public ModeloController(ConcesionariaApplication application) {
        this.application = application;
    }

    @GetMapping
    public ResponseEntity<List<ModeloResponse>> listarModelos(){
        final List<ModeloResponse> list = application.listarModelos();
        return new ResponseEntity<>(list , HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ModeloResponse> buscarModelo(@PathVariable String id){
        final ModeloResponse modeloResponse = application.buscarModelo(id);
        return new ResponseEntity<>(modeloResponse , HttpStatus.OK);
    }
}
