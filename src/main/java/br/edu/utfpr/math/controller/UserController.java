package br.edu.utfpr.math.controller;

import br.edu.utfpr.math.builder.ConeBuilder;
import br.edu.utfpr.math.builder.CubeBuilder;
import br.edu.utfpr.math.builder.CylinderBuilder;
import br.edu.utfpr.math.builder.PyramidBuilder;
import br.edu.utfpr.math.model.Solid;
import br.edu.utfpr.math.services.SolidService;
import br.edu.utfpr.math.util.Util;
import java.io.IOException;
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
@RequestMapping("/u")
public class UserController {

    @Autowired
    SolidService solidService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView showHome() {
        return new ModelAndView("initial-user.jsp");
    }

    @RequestMapping(path = "/solido", method = RequestMethod.GET)
    public ModelAndView showScreenTypeOfSolid() {
        return new ModelAndView("type-of-solid-form.jsp");
    }

    @RequestMapping(path = "/solido/cubo", method = RequestMethod.GET)
    public ModelAndView showScreenCube() {
        ModelAndView mv = new ModelAndView("cube-form.jsp", "solid", new CubeBuilder());
        return mv;
    }

    @RequestMapping(path = "/solido/cubo", method = RequestMethod.POST)
    public ModelAndView receiveScreenCube(@ModelAttribute("solid") CubeBuilder cube) throws IOException {
        Util util = new Util();
        Solid sCube = util.constructSolid(cube);
        solidService.save(sCube);
        ModelAndView mv = new ModelAndView("result.jsp");
        mv.addObject("solid", sCube);
        return mv;
    }

    @RequestMapping(path = "/solido/piramide", method = RequestMethod.GET)
    public ModelAndView showScreenPyramid() {
        ModelAndView mv = new ModelAndView("pyramid-form.jsp", "solid", new PyramidBuilder());
        return mv;
    }

    @RequestMapping(path = "/solido/piramide", method = RequestMethod.POST)
    public ModelAndView receiveScreenPyramid(@ModelAttribute("solid") PyramidBuilder pyramid) throws IOException {
        Util util = new Util();
        Solid sPyramid = util.constructSolid(pyramid);
        solidService.save(sPyramid);
        ModelAndView mv = new ModelAndView("result.jsp");
        mv.addObject("solid", sPyramid);
        return mv;
    }

    @RequestMapping(path = "/solido/cilindro", method = RequestMethod.GET)
    public ModelAndView showScreenCylinder() {
        ModelAndView mv = new ModelAndView("cylinder-form.jsp", "solid", new CylinderBuilder());
        return mv;
    }

    @RequestMapping(path = "/solido/cilindro", method = RequestMethod.POST)
    public ModelAndView receiveScreenCylinder(@ModelAttribute("solid") CylinderBuilder cylinder) throws IOException {
        Util util = new Util();
        Solid sCylinder = util.constructSolid(cylinder);
        solidService.save(sCylinder);
        ModelAndView mv = new ModelAndView("result.jsp");
        mv.addObject("solid", sCylinder);
        return mv;
    }

    @RequestMapping(path = "/solido/cone", method = RequestMethod.GET)
    public ModelAndView showScreenCone() {
        ModelAndView mv = new ModelAndView("cone-form.jsp", "solid", new ConeBuilder());
        return mv;
    }

    @RequestMapping(path = "/solido/cone", method = RequestMethod.POST)
    public ModelAndView receiveScreenCone(@ModelAttribute("solid") ConeBuilder cone) throws IOException {
        Util util = new Util();
        Solid sCone = util.constructSolid(cone);
        solidService.save(sCone);
        ModelAndView mv = new ModelAndView("result.jsp");
        mv.addObject("solid", sCone);
        return mv;
    }

    @RequestMapping(path = "/solido/historico", method = RequestMethod.GET)
    public ModelAndView showScreenResultList() {
        List<Solid> solids = solidService.findAll();
        ModelAndView mv = new ModelAndView("historic-list.jsp", "solids", solids);
        return mv;
    }

    @RequestMapping(path = "/solid/historico/clean", method = RequestMethod.GET)
    public ModelAndView cleanHistoric() {
        solidService.cleanHistoric();
        ModelAndView mv = new ModelAndView("clean-sucess.jsp");
        return mv;
    }
}
