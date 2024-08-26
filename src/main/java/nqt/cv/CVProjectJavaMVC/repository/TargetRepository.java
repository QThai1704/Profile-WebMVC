package nqt.cv.CVProjectJavaMVC.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import nqt.cv.CVProjectJavaMVC.domain.Target;
import java.util.List;

@Repository
public interface TargetRepository extends JpaRepository<Target, Long> {
    List<Target> findByUserId(Long user_id);

    Target save(Target target);

    Target findById(long id);

    Target deleteById(long id);
}
