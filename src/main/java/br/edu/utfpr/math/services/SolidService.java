package br.edu.utfpr.math.services;

import br.edu.utfpr.math.model.Solid;
import br.edu.utfpr.math.repository.SolidRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Carlos Henrique
 */
@Service
public class SolidService {

    @Autowired
    SolidRepository solidRepository;

    public void save(Solid solid) {
        solidRepository.save(solid);
    }

    public List<Solid> findAll() {
        return solidRepository.findAll();
    }

    public void cleanHistoric() {
        solidRepository.deleteAll();
    }
}
