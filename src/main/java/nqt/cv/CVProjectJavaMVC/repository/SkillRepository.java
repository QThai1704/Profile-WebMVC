package nqt.cv.CVProjectJavaMVC.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import nqt.cv.CVProjectJavaMVC.domain.Skill;

@Repository
public interface SkillRepository extends JpaRepository<Skill, Long> {
    List<Skill> findByUserId(Long user_id);

    Skill save(Skill skill);

    Skill findById(long id);

    Skill deleteById(long id);

}
