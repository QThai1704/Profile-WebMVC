package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import nqt.cv.CVProjectJavaMVC.domain.Skill;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.SkillService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class SkillController {
    private final SkillService skillService;
    private final UserService userService;

    public SkillController(SkillService skillService, UserService userService) {
        this.skillService = skillService;
        this.userService = userService;
    }

    // Create
    @PostMapping("/user/profile/skill/create")
    public String postCreateSkill(@ModelAttribute("newSkill") Skill newSkill) {
        User user = userService.getUserByEmail("quangthai1704@gmail.com");
        newSkill.setName(newSkill.getName());
        newSkill.setLevel(newSkill.getLevel());
        newSkill.setUser(user);
        this.skillService.saveSkill(newSkill);
        return "redirect:/user/profile/skill";
    }

    // Update
    @GetMapping("/user/profile/skill/{id}")
    public String getUpdateSkill(Model model, @PathVariable("id") long id) {
        Skill skill = skillService.getSkillById(id);
        model.addAttribute("updateSkill", skill);
        return "user/skill/update";
    }

    @PostMapping("/user/profile/skill/update")
    public String postUpdateSkill(@ModelAttribute("updateSkill") Skill newSkill) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        Skill currentSkill = this.skillService.getSkillById(newSkill.getId());
        currentSkill.setName(newSkill.getName());
        currentSkill.setLevel(newSkill.getLevel());
        currentSkill.setUser(user);
        this.skillService.saveSkill(currentSkill);
        return "redirect:/user/profile/skill";
    }

    // Delete
    @GetMapping("/user/profile/skill/delete/{id}")
    public String getDeleteSkill(Model model, @PathVariable("id") long id) {
        Skill skill = skillService.getSkillById(id);
        model.addAttribute("deleteSkill", skill);
        return "user/skill/delete";
    }

    @PostMapping("/user/profile/skill/delete")
    public String postDeleteSkill(@ModelAttribute("deleteSkill") Skill deleteSkill) {
        this.skillService.deleteSkillById(deleteSkill.getId());
        return "redirect:/user/profile/skill";
    }
}
