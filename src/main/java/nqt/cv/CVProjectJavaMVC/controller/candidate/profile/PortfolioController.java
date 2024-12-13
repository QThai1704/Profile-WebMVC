package nqt.cv.CVProjectJavaMVC.controller.candidate.profile;

import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import nqt.cv.CVProjectJavaMVC.domain.Portfolio;
import nqt.cv.CVProjectJavaMVC.domain.User;
import nqt.cv.CVProjectJavaMVC.service.PortfolioService;
import nqt.cv.CVProjectJavaMVC.service.UploadService;
import nqt.cv.CVProjectJavaMVC.service.UserService;

@Controller
public class PortfolioController {
    private final PortfolioService portfolioService;
    private final UserService userService;
    private final UploadService uploadService;

    public PortfolioController(PortfolioService portfolioService, UserService userService,
            UploadService uploadService) {
        this.portfolioService = portfolioService;
        this.userService = userService;
        this.uploadService = uploadService;
    }

    // Detail
    @GetMapping("/profile/portfolio/detail/{id}")
    public String getDetailPortfolio(Model model, @PathVariable("id") long id) {
        Portfolio portfolio = this.portfolioService.getPortifolioById(id);
        model.addAttribute("detailPortfolio", portfolio);
        return "candidate/portfolio/detail";
    }

    // Create
    @PostMapping("/profile/portfolio/create")
    public String postCreatePortfolio(@ModelAttribute("newPortfolio") Portfolio newPortfolio,
            @RequestParam("imgFile") MultipartFile image) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        String fileName = this.uploadService.saveUploadFile(image, "profile");
        newPortfolio.setName(newPortfolio.getName());
        newPortfolio.setImage(fileName);
        newPortfolio.setGithub(newPortfolio.getGithub());
        newPortfolio.setWebsite(newPortfolio.getWebsite());
        newPortfolio.setDetailDesc(newPortfolio.getDetailDesc());
        newPortfolio.setUser(user);
        this.portfolioService.savePortifolio(newPortfolio);
        return "redirect:/profile/portfolio";
    }

    // Update
    @GetMapping("/profile/portfolio/{id}")
    public String getUpdatePortfolio(Model model, @PathVariable("id") long id) {
        Portfolio portfolio = this.portfolioService.getPortifolioById(id);
        model.addAttribute("updatePortifolio", portfolio);
        return "candidate/portfolio/update";
    }

    @PostMapping("/profile/portfolio/update")
    public String postUpdatePortfolio(@ModelAttribute("updatePortfolio") Portfolio updatePortfolio,
            @RequestParam("updateImgFile") MultipartFile image) {
        User user = this.userService.getUserByEmail("quangthai1704@gmail.com");
        Portfolio currentPortfolio = this.portfolioService.getPortifolioById(updatePortfolio.getId());
        if (!image.isEmpty()) {
            String fileName = this.uploadService.saveUploadFile(image, "profile");
            currentPortfolio.setImage(fileName);
        }
        currentPortfolio.setName(updatePortfolio.getName());
        currentPortfolio.setGithub(updatePortfolio.getGithub());
        currentPortfolio.setWebsite(updatePortfolio.getWebsite());
        currentPortfolio.setDetailDesc(updatePortfolio.getDetailDesc());
        currentPortfolio.setUser(user);
        this.portfolioService.savePortifolio(currentPortfolio);
        return "redirect:/profile/portfolio";
    }

    // Delete
    @GetMapping("/profile/portfolio/delete/{id}")
    public String getDeletePortfolio(Model model, @PathVariable("id") long id) {
        Portfolio portfolio = portfolioService.getPortifolioById(id);
        model.addAttribute("deletePortfolio", portfolio);
        return "candidate/portfolio/delete";
    }

    @PostMapping("/profile/portfolio/delete")
    public String postDeletePortfolio(@ModelAttribute("deletePortfolio") Portfolio deletePortfolio) {
        this.portfolioService.deletePortifolioById(deletePortfolio.getId());
        return "redirect:/profile/portfolio";
    }
}
