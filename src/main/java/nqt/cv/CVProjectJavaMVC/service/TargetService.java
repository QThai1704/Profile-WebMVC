package nqt.cv.CVProjectJavaMVC.service;

import java.util.List;

import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.Target;
import nqt.cv.CVProjectJavaMVC.repository.TargetRepository;

@Service
public class TargetService {
    private final TargetRepository targetRepository;

    public TargetService(TargetRepository targetRepository) {
        this.targetRepository = targetRepository;
    }

    public List<Target> getTargetByUserId(Long userId) {
        return targetRepository.findByUserId(userId);
    }

    public Target saveTarget(Target target) {
        return targetRepository.save(target);
    }

    public Target getTargetById(long id) {
        return targetRepository.findById(id);
    }

    
}
