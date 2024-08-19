package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {
    @GetMapping("/user")
    public String getAdmin() {
        return "user/homepage/show";
    }

    @GetMapping("/user/message")
    public String getMessage() {
        return "user/message";
    }

    @GetMapping("/user/profile")
    public String getProfile() {
        return "user/profile";
    }

    @GetMapping("/user/profile/overview")
    public String getOverview() {
        return "user/overview";
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
