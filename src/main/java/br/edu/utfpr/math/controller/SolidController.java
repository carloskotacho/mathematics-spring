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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Carlos Henrique
 */
@Controller
@RequestMapping("/u/solido")
public class SolidController {

    @Autowired
    SolidService solidService;

    Util util = Util.getInstance();

    @GetMapping
    public ModelAndView showScreenTypeOfSolid() {
        return new ModelAndView("type-of-solid-form.jsp");
    }

    @GetMapping("/cubo")
    public ModelAndView showScreenCube() {
        ModelAndView mv = new ModelAndView("cube-form.jsp", "solid", new CubeBuilder());
        return mv;
    }

    @PostMapping("/cubo")
    public ModelAndView receiveScreenCube(@ModelAttribute("solid") CubeBuilder cube,
            RedirectAttributes redirectAttributes) throws IOException {

        Solid sCube = util.constructSolid(cube);
        solidService.save(sCube);

        redirectAttributes.addFlashAttribute("solid", sCube);
        return new ModelAndView("redirect:resultado");
    }

    @GetMapping("/resultado")
    public ModelAndView showScreenResult() {
        return new ModelAndView("result.jsp");
    }

    @GetMapping("/piramide")
    public ModelAndView showScreenPyramid() {
        ModelAndView mv = new ModelAndView("pyramid-form.jsp", "solid", new PyramidBuilder());
        return mv;
    }

    @PostMapping("/piramide")
    public ModelAndView receiveScreenPyramid(@ModelAttribute("solid") PyramidBuilder pyramid,
            RedirectAttributes redirectAttributes) throws IOException {

        Solid sPyramid = util.constructSolid(pyramid);
        solidService.save(sPyramid);

        redirectAttributes.addFlashAttribute("solid", sPyramid);
        return new ModelAndView("redirect:resultado");
    }

    @GetMapping("/cilindro")
    public ModelAndView showScreenCylinder() {
        ModelAndView mv = new ModelAndView("cylinder-form.jsp", "solid", new CylinderBuilder());
        return mv;
    }

    @PostMapping("/cilindro")
    public ModelAndView receiveScreenCylinder(@ModelAttribute("solid") CylinderBuilder cylinder,
            RedirectAttributes redirectAttributes) throws IOException {

        Solid sCylinder = util.constructSolid(cylinder);
        solidService.save(sCylinder);

        redirectAttributes.addFlashAttribute("solid", sCylinder);
        return new ModelAndView("redirect:resultado");
    }

    @GetMapping("/cone")
    public ModelAndView showScreenCone() {
        ModelAndView mv = new ModelAndView("cone-form.jsp", "solid", new ConeBuilder());
        return mv;
    }

    @PostMapping("/cone")
    public ModelAndView receiveScreenCone(@ModelAttribute("solid") ConeBuilder cone,
            RedirectAttributes redirectAttributes) throws IOException {

        Solid sCone = util.constructSolid(cone);
        solidService.save(sCone);

        redirectAttributes.addFlashAttribute("solid", sCone);
        return new ModelAndView("redirect:resultado");
    }

    @GetMapping("/historico")
    public ModelAndView showScreenResultList() {
        List<Solid> solids = solidService.findAll();
        ModelAndView mv = new ModelAndView("historic-list.jsp", "solids", solids);
        return mv;
    }

    @GetMapping("/historico/limpar")
    public ModelAndView cleanHistoric() {
        solidService.cleanHistoric();
        ModelAndView mv = new ModelAndView("clean-sucess.jsp");
        return mv;
    }
}
