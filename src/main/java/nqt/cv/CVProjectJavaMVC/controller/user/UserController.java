package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
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
}
