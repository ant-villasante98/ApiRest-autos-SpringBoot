package ar.edu.utn.frc.backend.spring.application.controller;

import ar.edu.utn.frc.backend.spring.application.ConcesionariaApplication;
import ar.edu.utn.frc.backend.spring.application.response.MarcaResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/marcas")
public class MarcaController {

    private final ConcesionariaApplication application;

    public MarcaController(ConcesionariaApplication application) {
        this.application = application;
    }

    @GetMapping
    public ResponseEntity<List<MarcaResponse>> listarMarcas(){
        final List<MarcaResponse> lista = application.listarMarcas();

        return new ResponseEntity<>(lista, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    private ResponseEntity<MarcaResponse> buscarMarca(@PathVariable String id){
        final MarcaResponse marcaResponse = application.buscarMarca(id);
        return new ResponseEntity<>(marcaResponse, HttpStatus.OK);
    }
}
