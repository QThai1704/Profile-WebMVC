package nqt.cv.CVProjectJavaMVC.service;

import java.util.List;
import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.Skill;
import nqt.cv.CVProjectJavaMVC.repository.SkillRepository;

@Service
public class SkillService {
    private final SkillRepository skillRepository;

    public SkillService(SkillRepository skillRepository) {
        this.skillRepository = skillRepository;
    }

    public List<Skill> getSkillsByUserId(Long user_id) {
        return skillRepository.findByUserId(user_id);
    }

    public Skill saveSkill(Skill skill) {
        return skillRepository.save(skill);
    }

    public Skill getSkillById(long id) {
        return skillRepository.findById(id);
    }

    public Skill deleteSkillById(long id) {
        return skillRepository.deleteById(id);
    }
}
