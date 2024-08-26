package nqt.cv.CVProjectJavaMVC.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import nqt.cv.CVProjectJavaMVC.domain.Society;

@Repository
public interface SocietyRepository extends JpaRepository<Society, Long> {
    List<Society> findByUserId(Long user_id);

    Society save(Society society);

    Society findById(long id);

    Society deleteById(long id);
}
