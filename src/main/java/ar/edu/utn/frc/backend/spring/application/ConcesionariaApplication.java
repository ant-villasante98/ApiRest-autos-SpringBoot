package ar.edu.utn.frc.backend.spring.application;

import ar.edu.utn.frc.backend.spring.application.request.AutoRequest;
import ar.edu.utn.frc.backend.spring.application.request.ModeloCreateAutoRequest;
import ar.edu.utn.frc.backend.spring.application.response.AutoResponse;
import ar.edu.utn.frc.backend.spring.application.response.MarcaResponse;
import ar.edu.utn.frc.backend.spring.application.response.ModeloResponse;
import ar.edu.utn.frc.backend.spring.domain.model.Auto;
import ar.edu.utn.frc.backend.spring.domain.model.Marca;
import ar.edu.utn.frc.backend.spring.domain.model.Modelo;
import ar.edu.utn.frc.backend.spring.domain.repository.AutoRepository;
import ar.edu.utn.frc.backend.spring.domain.service.AutoService;
import ar.edu.utn.frc.backend.spring.domain.service.MarcaService;
import ar.edu.utn.frc.backend.spring.domain.service.ModeloService;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ConcesionariaApplication {
    private final MarcaService marcaService;
    private final ModeloService modeloService;
    private final AutoService autoService;
    public ConcesionariaApplication(MarcaService marcaService, ModeloService modeloService, AutoService autoService) {
        this.marcaService = marcaService;
        this.modeloService = modeloService;
        this.autoService = autoService;
    }

    // Metodos de Marcas
    public List<MarcaResponse> listarMarcas(){
       return marcaService
               .listarMarcas()
               .stream()
               .map(MarcaResponse::from)
               .toList();
   }

   public MarcaResponse buscarMarca(String id){
       final Marca marca = marcaService.buscarMarca(id);
        return MarcaResponse.from(marca);
   }

   //Metodos de Modelos
    public  List<ModeloResponse> listarModelos(){
        return modeloService.getAll()
                .stream()
                .map(ModeloResponse::from)
                .toList();
    }

    public ModeloResponse buscarModelo(String id){
            final Modelo modelo = modeloService.buscarModelo(id);
            return ModeloResponse.from(modelo);
    }

    //Metodas de Autos
    public  List<AutoResponse> listarAutos(){
        return autoService.listarAutos()
                .stream()
                .map(AutoResponse::from)
                .toList();

    }

    public String crearAuto(ModeloCreateAutoRequest modeloCreate){

        final Modelo modelo = modeloService.buscarModelo(modeloCreate.getId());
        return this.autoService.crearAuto(modelo);
    }

    public AutoResponse buscarAuto(String id ){
        return  AutoResponse.from( autoService.buscarAuto(id));
    }

    public AutoResponse modificarAuto(AutoRequest autoRequest){
        final Auto auto = autoService.modificarAuto(autoRequest.toAuto());
        return AutoResponse.from(auto);
    }

    public void  eliminarAuto(String idAuto){
        final Auto auto = autoService.buscarAuto(idAuto);
       autoService.eliminarAuto(auto);
    }
}
