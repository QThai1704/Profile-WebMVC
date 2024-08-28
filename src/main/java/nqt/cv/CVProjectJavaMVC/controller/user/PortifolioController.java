package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import nqt.cv.CVProjectJavaMVC.domain.Portifolio;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.PortifolioService;
import nqt.cv.CVProjectJavaMVC.service.UploadService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class PortifolioController {
    private final PortifolioService portifolioService;
    private final UserService userService;
    private final UploadService uploadService;

    public PortifolioController(PortifolioService portifolioService, UserService userService, UploadService uploadService) {
        this.portifolioService = portifolioService;
        this.userService = userService;
        this.uploadService = uploadService;
    }

    // Create
    @PostMapping("/user/profile/portifolio/create")
    public String postCreatePortifolio(@ModelAttribute("newPortifolio") Portifolio newPortifolio, @RequestParam("imgFile") MultipartFile image) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        String fileName = this.uploadService.saveUploadFile(image, "profile");
        newPortifolio.setName(newPortifolio.getName());
        newPortifolio.setImage(fileName);
        newPortifolio.setGithub(newPortifolio.getGithub());
        newPortifolio.setWebsite(newPortifolio.getWebsite());
        newPortifolio.setDetailDesc(newPortifolio.getDetailDesc());
        newPortifolio.setUser(user);
        this.portifolioService.savePortifolio(newPortifolio);
        return "redirect:/user/profile/portifolio";
    }

    // // Update
    // @GetMapping("/user/profile/society/{id}")
    // public String getUpdateSociety(Model model, @PathVariable("id") long id) {
    // Society society = this.societyService.getSocietyById(id);
    // model.addAttribute("updateSociety", society);
    // return "user/society/update";
    // }

    // @PostMapping("/user/profile/society/update")
    // public String postUpdateSociety(@ModelAttribute("updateSociety") Society
    // newSociety) {
    // User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
    // Society currentSociety =
    // this.societyService.getSocietyById(newSociety.getId());
    // currentSociety.setName(newSociety.getName());
    // currentSociety.setLink(newSociety.getLink());
    // currentSociety.setUser(user);
    // this.societyService.saveSociety(currentSociety);
    // return "redirect:/user/profile/society";
    // }

    // // Delete
    // @GetMapping("/user/profile/society/delete/{id}")
    // public String getDeleteSociety(Model model, @PathVariable("id") long id) {
    // Society society = societyService.getSocietyById(id);
    // model.addAttribute("deleteSociety", society);
    // return "user/society/delete";
    // }

    // @PostMapping("/user/profile/society/delete")
    // public String postDeleteSociety(@ModelAttribute("deleteSociety") Society
    // deleteSociety) {
    // this.societyService.deleteSocietyById(deleteSociety.getId());
    // return "redirect:/user/profile/society";
    // }
}
