package br.edu.utfpr.math.controller;

import br.edu.utfpr.math.model.User;
import br.edu.utfpr.math.services.UserService;
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
@RequestMapping("/")
public class HomeController {

    @Autowired
    UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView showHome() {
        return new ModelAndView("index.jsp");
    }

    @RequestMapping(path = "/entrar", method = RequestMethod.GET)
    public ModelAndView showLoginUser() {
        return new ModelAndView("login-form.jsp");
    }

    @RequestMapping(path = "/registrar", method = RequestMethod.GET)
    public ModelAndView showRegisterUser() {
        ModelAndView mv = new ModelAndView("register-form.jsp", "u", new User());
        return mv;
    }

    @RequestMapping(path = "/registrar", method = RequestMethod.POST)
    public ModelAndView receiveRegisterUser(@ModelAttribute("u") User user) {
        userService.save(user);
        ModelAndView mv = new ModelAndView("sucess-register.jsp");
        mv.addObject("u", user.getName());
        return mv;
    }

}
