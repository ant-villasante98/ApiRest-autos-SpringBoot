package ar.edu.utn.frc.backend.spring.application.controller;


import ar.edu.utn.frc.backend.spring.application.ConcesionariaApplication;
import ar.edu.utn.frc.backend.spring.application.response.AutoResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/autos")
public class AutoController {

    private final ConcesionariaApplication application;

    public AutoController(ConcesionariaApplication application) {
        this.application = application;
    }


    @GetMapping
    public ResponseEntity<List<AutoResponse>> listarAutos(){
        final List<AutoResponse> lista = application.listarAutos();
        return new ResponseEntity<>(lista , HttpStatus.OK);
    }
}
