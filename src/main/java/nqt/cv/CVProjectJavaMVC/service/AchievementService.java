package nqt.cv.CVProjectJavaMVC.service;

import java.util.List;
import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.Achievement;
import nqt.cv.CVProjectJavaMVC.repository.AchievementRepository;

@Service
public class AchievementService {
    private final AchievementRepository achievementRepository;

    public AchievementService(AchievementRepository achievementRepository) {
        this.achievementRepository = achievementRepository;
    }

    public List<Achievement> getAchievementsByUserId(Long user_id) {
        return achievementRepository.findByUserId(user_id);
    }

    public Achievement saveAchievement(Achievement achievement) {
        return achievementRepository.save(achievement);
    }

    public Achievement getAchievementById(long id) {
        return achievementRepository.findById(id);
    }

    public Achievement deleteAchievementById(long id) {
        return achievementRepository.deleteById(id);
    }
}
