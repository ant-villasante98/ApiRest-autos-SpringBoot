package ar.edu.utn.frc.backend.spring.infrastructure.configuration;

import ar.edu.utn.frc.backend.spring.application.response.AutoResponse;
import ar.edu.utn.frc.backend.spring.domain.repository.AutoRepository;
import ar.edu.utn.frc.backend.spring.domain.repository.MarcaRepository;
import ar.edu.utn.frc.backend.spring.domain.repository.ModeloRepository;
import ar.edu.utn.frc.backend.spring.domain.service.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BeanConfiguration {

    @Bean
    public MarcaService marcaService(MarcaRepository marcaRepository) {
        return new DomainMarcaService(marcaRepository);
    }

    @Bean
    public ModeloService modeloService(ModeloRepository modeloRepository){
        return  new DomainModeloService(modeloRepository);
    }

    @Bean
    public AutoService autoService(AutoRepository autoRepository){
        return new DomainAutoService(autoRepository);
    }
}
