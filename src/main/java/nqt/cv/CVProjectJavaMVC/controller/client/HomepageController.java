package nqt.cv.CVProjectJavaMVC.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import nqt.cv.CVProjectJavaMVC.domain.Achievement;
import nqt.cv.CVProjectJavaMVC.domain.Skill;
import nqt.cv.CVProjectJavaMVC.domain.Society;
import nqt.cv.CVProjectJavaMVC.domain.Target;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.AchievementService;
import nqt.cv.CVProjectJavaMVC.service.SkillService;
import nqt.cv.CVProjectJavaMVC.service.SocietyService;
import nqt.cv.CVProjectJavaMVC.service.TargetService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class HomepageController {
    private final UserService userService;
    private final TargetService targetService;
    private final SkillService skillService;
    private final SocietyService societyService;
    private final AchievementService achievementService;

    public HomepageController(UserService userService, TargetService targetService, SkillService skillService,
            SocietyService societyService, AchievementService achievementService) {
        this.userService = userService;
        this.targetService = targetService;
        this.skillService = skillService;
        this.societyService = societyService;
        this.achievementService = achievementService;
    }

    @GetMapping("/")
    public String getHomepage() {
        return "client/show";
    }

    @GetMapping("/login")
    public String getLogin() {
        return "user/auth/login";
    }

    @GetMapping("/detail_cv")
    public String getDetailCv(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        List<Target> targets = this.targetService.getTargetByUserId(user.getId());
        List<Society> societies = this.societyService.getSocietiesByUserId(user.getId());
        List<Skill> skills = this.skillService.getSkillsByUserId(user.getId());
        List<Achievement> achievements = this.achievementService.getAchievementsByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("targets", targets);
        model.addAttribute("societies", societies);
        model.addAttribute("skills", skills);
        model.addAttribute("achievements", achievements);
        return "client/cv";
    }

}
