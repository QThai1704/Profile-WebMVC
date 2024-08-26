package nqt.cv.CVProjectJavaMVC.controller.user;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import nqt.cv.CVProjectJavaMVC.domain.Target;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.TargetService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class DashboardController {
    private final UserService userService;
    private final TargetService targetService;

    public DashboardController(UserService userService, TargetService targetService) {
        this.userService = userService;
        this.targetService = targetService;
    }

    @GetMapping("/user")
    public String getAdmin() {
        return "user/homepage/show";
    }

    @GetMapping("/user/message")
    public String getMessage(Model model) {
        User user = userService.getUserByEmail("quangthai1704@gmail.com");
        model.addAttribute("user", user);
        model.addAttribute("changeDate", new SimpleDateFormat("dd-MM-yyyy").format(user.getDateOfBirth()));
        return "user/message";
    }

    @GetMapping("/user/profile")
    public String getProfile() {
        return "user/profile";
    }

    @GetMapping("/user/profile/target")
    public String getTarget(Model model) {
        User user = userService.getUserByEmail("quangthai1704@gmail.com");
        List<Target> targets = targetService.getTargetByUserId(user.getId());
        model.addAttribute("targets", targets);
        model.addAttribute("newTarget", new Target());
        return "user/target/target";
    }

    @GetMapping("/user/profile/society")
    public String getAbout() {
        return "user/society";
    }

    @GetMapping("/user/profile/skill")
    public String getSkill() {
        return "user/skill";
    }

    @GetMapping("/user/profile/portifolio")
    public String getPortifolio() {
        return "user/portifolio";
    }

    @GetMapping("/user/profile/experience")
    public String getExperience() {
        return "user/experience";
    }

    @GetMapping("/user/profile/contact")
    public String getContact() {
        return "user/contact";
    }
}
