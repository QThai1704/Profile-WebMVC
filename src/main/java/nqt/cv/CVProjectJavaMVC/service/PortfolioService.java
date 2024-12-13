package nqt.cv.CVProjectJavaMVC.service;

import java.util.List;

import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.Portfolio;
import nqt.cv.CVProjectJavaMVC.repository.PortfolioRepository;

@Service
public class PortfolioService {
    private final PortfolioRepository portifolioRepository;

    public PortfolioService(PortfolioRepository portifolioRepository) {
        this.portifolioRepository = portifolioRepository;
    }

    public List<Portfolio> getPortifoliosByUserId(Long user_id) {
        return this.portifolioRepository.findByUserId(user_id);
    }

    public Portfolio savePortifolio(Portfolio portifolio) {
        return this.portifolioRepository.save(portifolio);
    }

    public Portfolio getPortifolioById(long id) {
        return this.portifolioRepository.findById(id);
    }

    public Portfolio deletePortifolioById(long id) {
        return this.portifolioRepository.deleteById(id);
    }

}
