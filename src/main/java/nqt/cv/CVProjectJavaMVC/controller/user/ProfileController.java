package nqt.cv.CVProjectJavaMVC.controller.user;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import nqt.cv.CVProjectJavaMVC.domain.Achievement;
import nqt.cv.CVProjectJavaMVC.domain.Experience;
import nqt.cv.CVProjectJavaMVC.domain.Portifolio;
import nqt.cv.CVProjectJavaMVC.domain.Skill;
import nqt.cv.CVProjectJavaMVC.domain.Target;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.domain.Society;
import nqt.cv.CVProjectJavaMVC.service.AchievementService;
import nqt.cv.CVProjectJavaMVC.service.ExperienceService;
import nqt.cv.CVProjectJavaMVC.service.PortifolioService;
import nqt.cv.CVProjectJavaMVC.service.SkillService;
import nqt.cv.CVProjectJavaMVC.service.TargetService;
import nqt.cv.CVProjectJavaMVC.service.UserService;
import nqt.cv.CVProjectJavaMVC.service.SocietyService;

@Controller
public class ProfileController {
    private final UserService userService;
    private final TargetService targetService;
    private final SkillService skillService;
    private final SocietyService societyService;
    private final AchievementService achievementService;
    private final PortifolioService portifolioService;
    private final ExperienceService experienceService;

    public ProfileController(UserService userService, TargetService targetService, SkillService skillService,
            SocietyService societyService, AchievementService achievementService, PortifolioService portifolioService,
            ExperienceService experienceService) {
        this.userService = userService;
        this.targetService = targetService;
        this.skillService = skillService;
        this.societyService = societyService;
        this.achievementService = achievementService;
        this.portifolioService = portifolioService;
        this.experienceService = experienceService;
    }

    @GetMapping("/user")
    public String getUser(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        model.addAttribute("user", user);
        return "user/homepage/show";
    }

    @GetMapping("/user/message")
    public String getMessage(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        model.addAttribute("user", user);
        model.addAttribute("changeDate", new SimpleDateFormat("dd-MM-yyyy").format(user.getDateOfBirth()));
        return "user/homepage/message";
    }

    @GetMapping("/user/profile")
    public String getProfile(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        model.addAttribute("user", user);
        return "user/homepage/profile";
    }

    @GetMapping("/user/profile/target")
    public String getTarget(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        List<Target> targets = this.targetService.getTargetByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("targets", targets);
        model.addAttribute("newTarget", new Target());
        return "user/target/show";
    }

    @GetMapping("/user/profile/society")
    public String getAbout(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        List<Society> societies = this.societyService.getSocietiesByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("societies", societies);
        model.addAttribute("newSociety", new Society());
        return "user/society/show";
    }

    @GetMapping("/user/profile/skill")
    public String getSkill(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        List<Skill> skills = this.skillService.getSkillsByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("skills", skills);
        model.addAttribute("newSkill", new Skill());
        return "user/skill/show";
    }

    @GetMapping("/user/profile/portifolio")
    public String getPortifolio(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        List<Portifolio> portifolios = this.portifolioService.getPortifoliosByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("portifolios", portifolios);
        model.addAttribute("newPortifolio", new Portifolio());
        return "user/portifolio/show";
    }

    @GetMapping("/user/profile/experience")
    public String getExperience(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        List<Experience> experiences = this.experienceService.getExperiencesByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("experiences", experiences);
        model.addAttribute("newExperience", new Experience());
        return "user/experience/show";
    }

    @GetMapping("/user/profile/achievement")
    public String getContact(Model model) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        List<Achievement> achievements = this.achievementService.getAchievementsByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("achievements", achievements);
        model.addAttribute("newAchievement", new Achievement());
        return "user/achievement/show";
    }
}
