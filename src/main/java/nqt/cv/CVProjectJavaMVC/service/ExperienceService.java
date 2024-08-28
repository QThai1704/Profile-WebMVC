package nqt.cv.CVProjectJavaMVC.service;

import java.util.List;
import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.Experience;
import nqt.cv.CVProjectJavaMVC.repository.ExperienceRepository;

@Service
public class ExperienceService {
    private final ExperienceRepository experienceRepository;

    public ExperienceService(ExperienceRepository experienceRepository) {
        this.experienceRepository = experienceRepository;
    }

    public List<Experience> getExperiencesByUserId(long user_id) {
        return experienceRepository.findByUserId(user_id);
    }

    public void saveExperience(Experience experience) {
        experienceRepository.save(experience);
    }

    public Experience getExperienceById(long id) {
        return experienceRepository.findById(id);
    }

    public void deleteExperienceById(long id) {
        experienceRepository.deleteById(id);
    }
}
