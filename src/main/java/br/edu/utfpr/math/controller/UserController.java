package br.edu.utfpr.math.controller;

import br.edu.utfpr.math.model.User;
import br.edu.utfpr.math.services.UserService;
import br.edu.utfpr.math.util.Util;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Carlos Henrique
 */
@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    UserService userService;

    Util util = Util.getInstance();

    @GetMapping("/u")
    public ModelAndView showHomeUser(HttpServletResponse response) {
        util.addCookieCurrentUser(response);
        return new ModelAndView("initial-user.jsp");
    }

    @GetMapping("/a")
    public ModelAndView showHomeAdmin(HttpServletResponse response) {
        util.addCookieCurrentUser(response);
        return new ModelAndView("initial-admin.jsp");
    }

    @GetMapping("/a/listar")
    public ModelAndView showScreenUserList() {
        List<User> users = userService.findAll();
        ModelAndView mv = new ModelAndView("user-list.jsp", "users", users);
        return mv;
    }

    @GetMapping("/a/deletar")
    public ModelAndView showScreenUserDelete() {
        return new ModelAndView("form-delete.jsp", "email", new User());
    }

    @PostMapping("/a/deletar")
    public ModelAndView receiveScreenUserDelete(@ModelAttribute("email") String email) {
        for (User user : userService.findAll()) {
            if (user.getEmail().equals(email)) {
                userService.delete(user);
                return new ModelAndView("redirect:deletar/sucesso");
            }
        }
        return new ModelAndView("user-not-found.jsp");
    }

    @GetMapping("/a/deletar/sucesso")
    public ModelAndView showScreenSucessDelete() {
        return new ModelAndView("sucess-delete.jsp");
    }
}
