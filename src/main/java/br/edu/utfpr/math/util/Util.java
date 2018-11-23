package br.edu.utfpr.math.util;

import br.edu.utfpr.math.builder.MathematicsDirector;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import br.edu.utfpr.math.builder.SolidBuilder;
import br.edu.utfpr.math.model.Solid;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

public class Util {

    public Util() {
    }

    public Solid constructSolid(SolidBuilder solid) throws IOException {
        MathematicsDirector mathematics = new MathematicsDirector(solid);
        mathematics.constructSolid();
        Solid s = mathematics.getSolid();
        return s;
    }

    public void parameterMap(HttpServletRequest request, HttpSession session) {
        Map<String, String[]> parameterMap = new LinkedHashMap<String, String[]>();
        parameterMap.putAll(request.getParameterMap());
        session.setAttribute("parameterMap", parameterMap);
    }

    public void addCookie(HttpServletResponse response) {
        Cookie foo = new Cookie("foo", "bar");
        foo.setMaxAge(-1);
        response.addCookie(foo);
    }
}
