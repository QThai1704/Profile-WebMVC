package nqt.cv.CVProjectJavaMVC.repository;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import nqt.cv.CVProjectJavaMVC.domain.Portifolio;

@Repository
public interface PortifolioRepository extends JpaRepository<Portifolio, Long> {

    List<Portifolio> findByUserId(Long user_id);

    Portifolio save(Portifolio portifolio);

    Portifolio findById(long id);

    Portifolio deleteById(long id);
}
