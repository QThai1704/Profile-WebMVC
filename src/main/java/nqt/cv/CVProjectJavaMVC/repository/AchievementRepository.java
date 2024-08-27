package nqt.cv.CVProjectJavaMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import nqt.cv.CVProjectJavaMVC.domain.Achievement;

@Repository
public interface AchievementRepository extends JpaRepository<Achievement, Long> {
    List<Achievement> findByUserId(Long user_id);

    Achievement save(Achievement target);

    Achievement findById(long id);

    Achievement deleteById(long id);
}
