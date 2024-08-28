package nqt.cv.CVProjectJavaMVC.controller.user;

import org.springframework.security.access.method.P;
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

    public PortifolioController(PortifolioService portifolioService, UserService userService,
            UploadService uploadService) {
        this.portifolioService = portifolioService;
        this.userService = userService;
        this.uploadService = uploadService;
    }

    // Detail
    @GetMapping("/user/profile/portifolio/detail/{id}")
    public String getDetailPortifolio(Model model, @PathVariable("id") long id) {
        Portifolio portifolio = this.portifolioService.getPortifolioById(id);
        model.addAttribute("detailPortifolio", portifolio);
        return "user/portifolio/detail";
    }

    // Create
    @PostMapping("/user/profile/portifolio/create")
    public String postCreatePortifolio(@ModelAttribute("newPortifolio") Portifolio newPortifolio,
            @RequestParam("imgFile") MultipartFile image) {
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

    // Update
    @GetMapping("/user/profile/portifolio/{id}")
    public String getUpdatePortifolio(Model model, @PathVariable("id") long id) {
        Portifolio portifolio = this.portifolioService.getPortifolioById(id);
        model.addAttribute("updatePortifolio", portifolio);
        return "user/portifolio/update";
    }

    @PostMapping("/user/profile/portifolio/update")
    public String postUpdatePortifolio(@ModelAttribute("updatePortifolio") Portifolio updatePortifolio,
            @RequestParam("updateImgFile") MultipartFile image) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        Portifolio currentPortifolio = this.portifolioService.getPortifolioById(updatePortifolio.getId());
        if (!image.isEmpty()) {
            String fileName = this.uploadService.saveUploadFile(image, "profile");
            currentPortifolio.setImage(fileName);
        }
        currentPortifolio.setName(updatePortifolio.getName());
        currentPortifolio.setGithub(updatePortifolio.getGithub());
        currentPortifolio.setWebsite(updatePortifolio.getWebsite());
        currentPortifolio.setDetailDesc(updatePortifolio.getDetailDesc());
        currentPortifolio.setUser(user);
        this.portifolioService.savePortifolio(currentPortifolio);
        return "redirect:/user/profile/portifolio";
    }

    // Delete
    @GetMapping("/user/profile/portifolio/delete/{id}")
    public String getDeletePortifolio(Model model, @PathVariable("id") long id) {
        Portifolio portifolio = portifolioService.getPortifolioById(id);
        model.addAttribute("deletePortifolio", portifolio);
        return "user/portifolio/delete";
    }

    @PostMapping("/user/profile/portifolio/delete")
    public String postDeletePortifolio(@ModelAttribute("deletePortifolio") Portifolio deletePortifolio) {
        this.portifolioService.deletePortifolioById(deletePortifolio.getId());
        return "redirect:/user/profile/portifolio";
    }
}
