package nqt.cv.CVProjectJavaMVC.repository;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import nqt.cv.CVProjectJavaMVC.domain.Portfolio;

@Repository
public interface PortfolioRepository extends JpaRepository<Portfolio, Long> {

    List<Portfolio> findByUserId(Long user_id);

    Portfolio save(Portfolio portfolio);

    Portfolio findById(long id);

    Portfolio deleteById(long id);
}
