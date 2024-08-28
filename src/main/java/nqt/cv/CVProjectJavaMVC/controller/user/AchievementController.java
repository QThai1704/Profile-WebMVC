package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import nqt.cv.CVProjectJavaMVC.domain.Achievement;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.AchievementService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class AchievementController {
    private final AchievementService achievementService;
    private final UserService userService;

    public AchievementController(AchievementService achievementService, UserService userService) {
        this.achievementService = achievementService;
        this.userService = userService;
    }

    // Create
    @PostMapping("/user/profile/achievement/create")
    public String postCreateAchievement(@ModelAttribute("newAchievement") Achievement newAchievement) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        newAchievement.setTitle(newAchievement.getTitle());
        newAchievement.setType(newAchievement.getType());
        newAchievement.setDetailDesc(newAchievement.getDetailDesc());
        newAchievement.setShortDesc(newAchievement.getShortDesc());
        newAchievement.setStartDate(newAchievement.getStartDate());
        newAchievement.setEndDate(newAchievement.getEndDate());
        newAchievement.setUser(user);
        this.achievementService.saveAchievement(newAchievement);
        return "redirect:/user/profile/achievement";
    }

    // Update
    @GetMapping("/user/profile/achievement/{id}")
    public String getUpdateAchievemen(Model model, @PathVariable("id") long id) {
        Achievement achievement = achievementService.getAchievementById(id);
        model.addAttribute("updateAchievement", achievement);
        return "user/achievement/update";
    }

    @PostMapping("/user/profile/achievement/update")
    public String postUpdateAchievement(@ModelAttribute("updateAchievement") Achievement newAchievement) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        Achievement currentAchievement = this.achievementService.getAchievementById(newAchievement.getId());
        currentAchievement.setTitle(newAchievement.getTitle());
        currentAchievement.setType(newAchievement.getType());
        currentAchievement.setDetailDesc(newAchievement.getDetailDesc());
        currentAchievement.setShortDesc(newAchievement.getShortDesc());
        currentAchievement.setStartDate(newAchievement.getStartDate());
        currentAchievement.setEndDate(newAchievement.getEndDate());
        currentAchievement.setUser(user);
        this.achievementService.saveAchievement(currentAchievement);
        return "redirect:/user/profile/achievement";
    }

    // Delete
    @GetMapping("/user/profile/achievement/delete/{id}")
    public String getDeleteAchievement(Model model, @PathVariable("id") long id) {
        Achievement achievement = achievementService.getAchievementById(id);
        model.addAttribute("deleteAchievement", achievement);
        return "user/achievement/delete";
    }

    @PostMapping("/user/profile/achievement/delete")
    public String postDeleteAchievement(@ModelAttribute("deleteAchievement") Achievement deleteAchievement) {
        this.achievementService.deleteAchievementById(deleteAchievement.getId());
        return "redirect:/user/profile/achievement";
    }
}
