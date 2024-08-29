package nqt.cv.CVProjectJavaMVC.controller.client;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import nqt.cv.CVProjectJavaMVC.domain.Achievement;
import nqt.cv.CVProjectJavaMVC.domain.Experience;
import nqt.cv.CVProjectJavaMVC.domain.Portifolio;
import nqt.cv.CVProjectJavaMVC.domain.Skill;
import nqt.cv.CVProjectJavaMVC.domain.Society;
import nqt.cv.CVProjectJavaMVC.domain.Target;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.domain.dto.RegisterDTO;
import nqt.cv.CVProjectJavaMVC.service.AchievementService;
import nqt.cv.CVProjectJavaMVC.service.ExperienceService;
import nqt.cv.CVProjectJavaMVC.service.PortifolioService;
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
    private final PortifolioService portifolioService;
    private final ExperienceService experienceService;
    private final PasswordEncoder passwordEncoder;

    public HomepageController(UserService userService, TargetService targetService, SkillService skillService,
            SocietyService societyService, AchievementService achievementService, PortifolioService portifolioService,
            ExperienceService experienceService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.targetService = targetService;
        this.skillService = skillService;
        this.societyService = societyService;
        this.achievementService = achievementService;
        this.portifolioService = portifolioService;
        this.experienceService = experienceService;
        this.passwordEncoder = passwordEncoder;
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
        List<Experience> experiences = this.experienceService.getExperiencesByUserId(user.getId());
        List<Portifolio> portifolios = this.portifolioService.getPortifoliosByUserId(user.getId());
        for (Society societie : societies) {
            if (societie.getName().equals("Facebook")) {
                model.addAttribute("facebook", societie.getLink());
            } else if (societie.getName().equals("Github")) {
                model.addAttribute("github", societie.getLink());
            } else if (societie.getName().equals("Instagram")) {
                model.addAttribute("instagram", societie.getLink());
            }
        }
        model.addAttribute("user", user);
        model.addAttribute("changeDate", new SimpleDateFormat("dd-MM-yyyy").format(user.getDateOfBirth()));
        model.addAttribute("targets", targets);
        model.addAttribute("skills", skills);
        model.addAttribute("achievements", achievements);
        model.addAttribute("experiences", experiences);
        model.addAttribute("portifolios", portifolios);
        return "client/cv";
    }

    @GetMapping("/register")
    public String getRegister(Model model) {
        model.addAttribute("registerUser", new User());
        return "user/auth/register";
    }

    @PostMapping("/register")
    public String postRegister(@ModelAttribute("registerUser") RegisterDTO registerDTO) {
        User user = this.userService.getRegisterToUser(registerDTO);
        user.setPassword(this.passwordEncoder.encode(user.getPassword()));
        user.setRole(this.userService.getRoleByName("USER"));
        return "redirect: /user/auth/login";
    }
}
