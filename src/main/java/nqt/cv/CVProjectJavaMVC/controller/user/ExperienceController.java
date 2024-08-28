package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import nqt.cv.CVProjectJavaMVC.domain.Experience;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.ExperienceService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class ExperienceController {
    private final ExperienceService experienceService;
    private final UserService userService;

    public ExperienceController(ExperienceService experienceService, UserService userService) {
        this.experienceService = experienceService;
        this.userService = userService;
    }

    // Create
    @PostMapping("/user/profile/experience/create")
    public String postCreateExperience(@ModelAttribute("newExperience") Experience newExperience) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        newExperience.setStartDate(newExperience.getStartDate());
        newExperience.setEndDate(newExperience.getEndDate());
        newExperience.setCompany(newExperience.getCompany());
        newExperience.setPosition(newExperience.getPosition());
        newExperience.setDescription(newExperience.getDescription());
        newExperience.setUser(user);
        this.experienceService.saveExperience(newExperience);
        return "redirect:/user/profile/experience";
    }

    // Update
    @GetMapping("/user/profile/experience/{id}")
    public String getUpdateExperience(Model model, @PathVariable("id") long id) {
        Experience experience = this.experienceService.getExperienceById(id);
        model.addAttribute("updateExperience", experience);
        return "user/experience/update";
    }

    @PostMapping("/user/profile/experience/update")
    public String postUpdateExperience(@ModelAttribute("updateExperience") Experience updateExperience) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        Experience currentExperience = this.experienceService.getExperienceById(updateExperience.getId());
        currentExperience.setStartDate(updateExperience.getStartDate());
        currentExperience.setEndDate(updateExperience.getEndDate());
        currentExperience.setCompany(updateExperience.getCompany());
        currentExperience.setPosition(updateExperience.getPosition());
        currentExperience.setDescription(updateExperience.getDescription());
        currentExperience.setUser(user);
        this.experienceService.saveExperience(currentExperience);
        return "redirect:/user/profile/experience";
    }

    // Delete
    @GetMapping("/user/profile/experience/delete/{id}")
    public String getDeleteExperience(Model model, @PathVariable("id") long id) {
        Experience experience = experienceService.getExperienceById(id);
        model.addAttribute("deleteExperience", experience);
        return "user/experience/delete";
    }

    @PostMapping("/user/profile/experience/delete")
    public String postDeleteExperience(@ModelAttribute("deleteExperience") Experience deleteExperience) {
        this.experienceService.deleteExperienceById(deleteExperience.getId());
        return "redirect:/user/profile/experience";
    }
}
