package nqt.cv.CVProjectJavaMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import nqt.cv.CVProjectJavaMVC.domain.Experience;

@Repository
public interface ExperienceRepository extends JpaRepository<Experience, Long> {
    List<Experience> findByUserId(Long user_id);

    Experience save(Experience portifolio);

    Experience findById(long id);

    Experience deleteById(long id);
}
