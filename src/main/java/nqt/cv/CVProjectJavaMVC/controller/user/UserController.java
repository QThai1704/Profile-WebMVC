package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class UserController {
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    public UserController(UserService userService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @PostMapping("/user/message/update")
    public String postMessage(@ModelAttribute("user") User user) {
        User currentUser = userService.getUserByEmail("quangthai1704@gmail.com");
        System.out.println(user.toString());
        if (currentUser != null) {
            currentUser.setFullName(user.getFullName());
            currentUser.setAddress(user.getAddress());
            currentUser.setEmail("quangthai1704@gmail.com");
            currentUser.setPassword(this.passwordEncoder.encode(user.getPassword()));
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
}
