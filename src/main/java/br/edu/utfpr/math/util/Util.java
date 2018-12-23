package br.edu.utfpr.math.util;

import br.edu.utfpr.math.builder.MathematicsDirector;
import java.io.IOException;

import br.edu.utfpr.math.builder.SolidBuilder;
import br.edu.utfpr.math.model.Solid;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 *
 * @author Carlos Henrique
 */
public class Util {

    public static Util instance;

    public Util() {
    }

    public static Util getInstance() {
        if (instance == null) {
            instance = new Util();
        }
        return instance;
    }

    public Solid constructSolid(SolidBuilder solid) throws IOException {
        MathematicsDirector mathematics = new MathematicsDirector(solid);
        mathematics.constructSolid();
        Solid s = mathematics.getSolid();
        return s;
    }

    public void addCookieCurrentUser(HttpServletResponse response) {
        String currentUser = SecurityContextHolder.getContext().getAuthentication().getName();
        Cookie cookie = new Cookie("currentUser", currentUser);
        cookie.setMaxAge(-1);
        response.addCookie(cookie);
    }
}
