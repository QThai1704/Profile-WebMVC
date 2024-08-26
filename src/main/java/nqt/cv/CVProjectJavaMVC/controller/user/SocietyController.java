package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import nqt.cv.CVProjectJavaMVC.domain.Skill;
import nqt.cv.CVProjectJavaMVC.domain.Society;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.SocietyService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SocietyController {
    private final SocietyService societyService;
    private final UserService userService;

    public SocietyController(SocietyService societyService, UserService userService) {
        this.societyService = societyService;
        this.userService = userService;
    }

    // Create
    @PostMapping("/user/profile/society/create")
    public String postCreateSociety(@ModelAttribute("newSociety") Society newSociety) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        newSociety.setName(newSociety.getName());
        newSociety.setLink(newSociety.getLink());
        newSociety.setUser(user);
        this.societyService.saveSociety(newSociety);
        return "redirect:/user/profile/society";
    }

    // Update
    @GetMapping("/user/profile/society/{id}")
    public String getUpdateSociety(Model model, @PathVariable("id") long id) {
        Society society = this.societyService.getSocietyById(id);
        model.addAttribute("updateSociety", society);
        return "user/society/update";
    }

    @PostMapping("/user/profile/society/update")
    public String postUpdateSociety(@ModelAttribute("updateSociety") Society newSociety) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        Society currentSociety = this.societyService.getSocietyById(newSociety.getId());
        currentSociety.setName(newSociety.getName());
        currentSociety.setLink(newSociety.getLink());
        currentSociety.setUser(user);
        this.societyService.saveSociety(currentSociety);
        return "redirect:/user/profile/society";
    }

    // Delete
    @GetMapping("/user/profile/society/delete/{id}")
    public String getDeleteSociety(Model model, @PathVariable("id") long id) {
        Society society = societyService.getSocietyById(id);
        model.addAttribute("deleteSociety", society);
        return "user/society/delete";
    }

    @PostMapping("/user/profile/society/delete")
    public String postDeleteSociety(@ModelAttribute("deleteSociety") Society deleteSociety) {
        this.societyService.deleteSocietyById(deleteSociety.getId());
        return "redirect:/user/profile/society";
    }
}
