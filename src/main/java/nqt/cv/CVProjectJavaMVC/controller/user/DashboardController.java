package nqt.cv.CVProjectJavaMVC.controller.user;

import java.util.Date;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

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
        model.addAttribute("changeDate", new SimpleDateFormat("dd-MM-yyyy").format(user.getDateOfBirth()));
        return "user/message";
    }

    @PostMapping("/user/message/update")
    public String postMessage(@ModelAttribute("user") User user) {
        User currentUser = userService.getUserByEmail("quangthai1704@gmail.com");
        System.out.println(user.toString());
        if (currentUser != null) {
            currentUser.setFullName(user.getFullName());
            currentUser.setAddress(user.getAddress());
            currentUser.setEmail("quangthai1704@gmail.com");
            currentUser.setDateOfBirth(user.getDateOfBirth());
            currentUser.setLanguage(user.getLanguage());
            currentUser.setGender(user.getGender());
            currentUser.setPhoneNumber(user.getPhoneNumber());
            currentUser.setCandidate(user.getCandidate());
            // currentUser.setAvatar(user.getAvatar());
            this.userService.saveUser(currentUser);
        }
        return "redirect:/user/message";
    }

    @GetMapping("/user/profile")
    public String getProfile() {
        return "user/profile";
    }

    @GetMapping("/user/profile/target")
    public String getTarget() {
        return "user/target";
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
