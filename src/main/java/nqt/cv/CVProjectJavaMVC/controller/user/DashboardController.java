package nqt.cv.CVProjectJavaMVC.controller.user;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class DashboardController {
    private final UserService userService;

    public DashboardController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/user")
    public String getAdmin() {
        return "user/homepage/show";
    }

    @GetMapping("/user/message")
    public String getMessage(Model model) {
        User user = userService.getUserByEmail("quangthai1704@gmail.com");
        model.addAttribute("user", user);
        return "user/message";
    }

    @GetMapping("/user/profile")
    public String getProfile() {
        return "user/profile";
    }

    @GetMapping("/user/profile/target")
    public String getTarget() {
        return "user/target";
    }

    @GetMapping("/user/profile/about")
    public String getAbout() {
        return "user/about";
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
