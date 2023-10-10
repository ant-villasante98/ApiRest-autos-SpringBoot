package ar.edu.utn.frc.backend.spring.application.controller;


import ar.edu.utn.frc.backend.spring.application.ConcesionariaApplication;
import ar.edu.utn.frc.backend.spring.application.request.AutoRequest;
import ar.edu.utn.frc.backend.spring.application.request.ModeloCreateAutoRequest;
import ar.edu.utn.frc.backend.spring.application.response.AutoResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

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

    @GetMapping("/{id}")
    public ResponseEntity<AutoResponse> buscarModelo(@PathVariable String id){
        final AutoResponse auto = application.buscarAuto(id);
        return new ResponseEntity<>(auto , HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<String> crearAuto(@RequestBody ModeloCreateAutoRequest modelo){
        final String res  = application.crearAuto(modelo);
        return new ResponseEntity<>(res , HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<AutoResponse> modificarAuto(@PathVariable String id , @RequestBody AutoRequest autoRequest){
        AutoResponse optional = application.buscarAuto(id);


        final AutoResponse auto = application.modificarAuto(autoRequest);
        return new ResponseEntity<>(auto , HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> eliminarAuto(@PathVariable String idAuto){
        application.eliminarAuto(idAuto);
        return new ResponseEntity<>("Eliminado",HttpStatus.OK);
    }

}
