package nqt.cv.CVProjectJavaMVC.service;

import java.util.List;
import org.springframework.stereotype.Service;

import nqt.cv.CVProjectJavaMVC.domain.Society;
import nqt.cv.CVProjectJavaMVC.repository.SocietyRepository;

@Service
public class SocietyService {
    private final SocietyRepository societyRepository;

    public SocietyService(SocietyRepository societyRepository) {
        this.societyRepository = societyRepository;
    }

    public List<Society> getSocietiesByUserId(Long user_id) {
        return societyRepository.findByUserId(user_id);
    }

    public Society saveSociety(Society society) {
        return societyRepository.save(society);
    }

    public SocietyRepository getSocietyRepository() {
        return societyRepository;
    }

    public Society getSocietyById(long id) {
        return societyRepository.findById(id);
    }
    
    public void deleteSocietyById(long id) {
        societyRepository.deleteById(id);
    }

}