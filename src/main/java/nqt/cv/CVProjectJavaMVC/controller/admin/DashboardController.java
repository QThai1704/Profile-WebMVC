package nqt.cv.CVProjectJavaMVC.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
class DashboardController {

    @GetMapping("/admin")
    public String getAdmin(Model model) {
        return "admin/homepage/show";
    }
}