package br.edu.utfpr.math.controller;

import br.edu.utfpr.math.model.Role;
import br.edu.utfpr.math.model.User;
import br.edu.utfpr.math.services.RoleService;
import br.edu.utfpr.math.services.UserService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
public class HomeController {

    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    @GetMapping
    public ModelAndView showHome() {
        return new ModelAndView("index.jsp");
    }

    @GetMapping("/entrar")
    public ModelAndView showLoginUser() {
        return new ModelAndView("login-form.jsp");
    }

    @GetMapping("/registrar")
    public ModelAndView showRegisterUser() {
        ModelAndView mv = new ModelAndView("register-form.jsp", "u", new User());
        return mv;
    }

    @PostMapping("/registrar")
    public ModelAndView receiveRegisterUser(@ModelAttribute("u") User user) {
        List<Role> userRoles = new ArrayList<>();
        userRoles.add(roleService.findByName("ROLE_USER"));

        if (user.getProfile() != null) {
            if (user.getProfile().equals("ADMIN")) {
                user.setRoles(roleService.findAll());
            } else {
                user.setRoles(userRoles);
            }
        } else {
            user.setProfile("USER");
            user.setRoles(userRoles);
        }

        String password = user.getPassword();
        user.setPassword(new BCryptPasswordEncoder().encode(password));

        user.setActive("1");

        userService.save(user);

        ModelAndView mv = new ModelAndView("sucess-register.jsp");
        mv.addObject("u", user.getName());
        return mv;
    }

}
