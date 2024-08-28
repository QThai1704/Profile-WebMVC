package nqt.cv.CVProjectJavaMVC.service;

import java.util.List;

import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.Portifolio;
import nqt.cv.CVProjectJavaMVC.repository.PortifolioRepository;

@Service
public class PortifolioService {
    private final PortifolioRepository portifolioRepository;

    public PortifolioService(PortifolioRepository portifolioRepository) {
        this.portifolioRepository = portifolioRepository;
    }

    public List<Portifolio> getPortifoliosByUserId(Long user_id) {
        return this.portifolioRepository.findByUserId(user_id);
    }

    public Portifolio savePortifolio(Portifolio portifolio) {
        return this.portifolioRepository.save(portifolio);
    }

    public Portifolio getPortifolioById(long id) {
        return this.portifolioRepository.findById(id);
    }

    public Portifolio deletePortifolioById(long id) {
        return this.portifolioRepository.deleteById(id);
    }

}
