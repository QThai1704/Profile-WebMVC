package nqt.cv.CVProjectJavaMVC.controller.candidate;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import nqt.cv.CVProjectJavaMVC.domain.Achievement;
import nqt.cv.CVProjectJavaMVC.domain.Experience;
import nqt.cv.CVProjectJavaMVC.domain.Portfolio;
import nqt.cv.CVProjectJavaMVC.domain.Skill;
import nqt.cv.CVProjectJavaMVC.domain.Target;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.domain.Society;
import nqt.cv.CVProjectJavaMVC.service.AchievementService;
import nqt.cv.CVProjectJavaMVC.service.ExperienceService;
import nqt.cv.CVProjectJavaMVC.service.PortfolioService;
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
    private final PortfolioService portfolioService;
    private final ExperienceService experienceService;

    public ProfileController(UserService userService, TargetService targetService, SkillService skillService,
            SocietyService societyService, AchievementService achievementService, PortfolioService portfolioService,
            ExperienceService experienceService) {
        this.userService = userService;
        this.targetService = targetService;
        this.skillService = skillService;
        this.societyService = societyService;
        this.achievementService = achievementService;
        this.portfolioService = portfolioService;
        this.experienceService = experienceService;
    }

    @GetMapping("/profile/target")
    public String getTarget(Model model) {
        User user = this.userService.getUserByEmail("quangthai170402@gmail.com");
        List<Target> targets = this.targetService.getTargetByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("targets", targets);
        model.addAttribute("newTarget", new Target());
        return "candidate/profile/target/show";
    }

    @GetMapping("/profile/society")
    public String getAbout(Model model) {
        User user = this.userService.getUserByEmail("quangthai170402@gmail.com");
        List<Society> societies = this.societyService.getSocietiesByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("societies", societies);
        model.addAttribute("newSociety", new Society());
        return "candidate/profile/society/show";
    }

    @GetMapping("/profile/skill")
    public String getSkill(Model model) {
        User user = this.userService.getUserByEmail("quangthai170402@gmail.com");
        List<Skill> skills = this.skillService.getSkillsByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("skills", skills);
        model.addAttribute("newSkill", new Skill());
        return "candidate/profile/skill/show";
    }

    @GetMapping("/profile/portfolio")
    public String getPortfolio(Model model) {
        User user = this.userService.getUserByEmail("quangthai170402@gmail.com");
        List<Portfolio> portfolios = this.portfolioService.getPortifoliosByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("portfolios", portfolios);
        model.addAttribute("newPortfolio", new Portfolio());
        return "candidate/profile/portfolio/show";
    }

    @GetMapping("/profile/experience")
    public String getExperience(Model model) {
        User user = this.userService.getUserByEmail("quangthai170402@gmail.com");
        List<Experience> experiences = this.experienceService.getExperiencesByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("experiences", experiences);
        model.addAttribute("newExperience", new Experience());
        return "candidate/profile/experience/show";
    }

    @GetMapping("/profile/achievement")
    public String getContact(Model model) {
        User user = this.userService.getUserByEmail("quangthai170402@gmail.com");
        List<Achievement> achievements = this.achievementService.getAchievementsByUserId(user.getId());
        model.addAttribute("user", user);
        model.addAttribute("achievements", achievements);
        model.addAttribute("newAchievement", new Achievement());
        return "candidate/profile/achievement/show";
    }
}
