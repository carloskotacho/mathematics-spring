package br.edu.utfpr.math.controller;

import br.edu.utfpr.math.model.User;
import br.edu.utfpr.math.services.AdminService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Carlos Henrique
 */
@Controller
@RequestMapping("/a")
public class AdminController {

    @Autowired
    AdminService adminService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView showHome() {
        return new ModelAndView("initial-admin.jsp");
    }

    @RequestMapping(path = "/listar", method = RequestMethod.GET)
    public ModelAndView showScreenUserList() {
        List<User> users = adminService.findAll();
        ModelAndView mv = new ModelAndView("user-list.jsp", "users", users);
        return mv;
    }

    @RequestMapping(path = "/deletar", method = RequestMethod.GET)
    public ModelAndView showScreenUserDelete() {
        return new ModelAndView("form-delete.jsp", "email", new User());
    }

    @RequestMapping(path = "/deletar", method = RequestMethod.POST) //DELETE
    public ModelAndView receiveScreenUserDelete(@ModelAttribute("email") String email) {
        for (User user : adminService.findAll()) {
            if (user.getEmail().equals(email)) {
                adminService.delete(user);
                return new ModelAndView("sucess-delete.jsp");
            }
        }
        return new ModelAndView("user-not-found.jsp");
    }
}
