package nqt.cv.CVProjectJavaMVC.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomepageController {

    @GetMapping("/")
    public String getHomepage() {
        return "client/show";
    }

    @GetMapping("/login")
    public String getLogin() {
        return "user/auth/login";
    }

    @GetMapping("/detail_cv")
    public String getDetailCv() {
        return "client/cv";
    }

}
