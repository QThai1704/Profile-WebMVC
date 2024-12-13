package nqt.cv.CVProjectJavaMVC.controller.candidate;

import java.text.SimpleDateFormat;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class CandidateController {
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    public CandidateController(UserService userService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/candidate")
    public String getCandidate() {
        return "candidate/homepage/show";
    }

    @GetMapping(value = { "/candidate/profile", "/profile" })
    public String getProfileByUser(Model model) {
        User user = this.userService.getUserByEmail("quangthai170402@gmail.com");
        model.addAttribute("user", user);
        return "candidate/profile/homepage/show";
    }

    @GetMapping("/candidate/information")
    public String getMessage(Model model) {
        User user = this.userService.getUserByEmail("quangthai170402@gmail.com");
        model.addAttribute("user", user);
        return "candidate/information/message";
    }

    @PostMapping("/candidate/information")
    public String postMessage(@ModelAttribute("user") User user) {
        User currentUser = userService.getUserByEmail("quangthai170402@gmail.com");
        if (currentUser != null) {
            currentUser.setFullName(user.getFullName());
            currentUser.setAddress(user.getAddress());
            currentUser.setEmail("quangthai170402@gmail.com");
            currentUser.setPassword(this.passwordEncoder.encode(user.getPassword()));
            currentUser.setDateOfBirth(user.getDateOfBirth());
            currentUser.setLanguage(user.getLanguage());
            currentUser.setGender(user.getGender());
            currentUser.setPhoneNumber(user.getPhoneNumber());
            currentUser.setCandidate(user.getCandidate());
            // currentUser.setAvatar(user.getAvatar());
            this.userService.saveUser(currentUser);
        }
        return "redirect:/candidate/information";
    }
}
