package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import nqt.cv.CVProjectJavaMVC.domain.Target;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.TargetService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class TargetController {
    private final TargetService targetService;
    private final UserService userService;

    public TargetController(TargetService targetService, UserService userService) {
        this.targetService = targetService;
        this.userService = userService;
    }

    @PostMapping("/user/profile/target/create")
    public String postCreateTarget(@ModelAttribute("newTarget") Target newTarget) {
        User user = userService.getUserByEmail("quangthai1704@gmail.com");
        newTarget.setTitle(newTarget.getTitle());
        newTarget.setDescription(newTarget.getDescription());
        newTarget.setUser(user);
        this.targetService.saveTarget(newTarget);
        return "redirect:/user/profile/target";
    }

    @GetMapping("/user/profile/target/{id}")
    public String getUpdateTarget(Model model, @PathVariable("id") long id) {
        Target target = targetService.getTargetById(id);
        model.addAttribute("updateTarget", target);
        return "user/target/update";
    }

    @PostMapping("/user/profile/target/update")
    public String postUpdateTarget(@ModelAttribute("updateTarget") Target newTarget) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        Target currentTarget = this.targetService.getTargetById(newTarget.getId());
        // currentTarget.setTitle(newTarget.getTitle());
        currentTarget.setDescription(newTarget.getDescription());
        currentTarget.setUser(user);
        this.targetService.saveTarget(currentTarget);
        return "redirect:/user/profile/target";
    }
}
