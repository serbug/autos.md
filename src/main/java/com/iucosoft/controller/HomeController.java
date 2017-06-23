package com.iucosoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HomeController {

    @RequestMapping({"/home", "/"})
    public ModelAndView doHome(HttpServletRequest request,
                               HttpServletResponse response) {
        ModelAndView model = new ModelAndView("home");
        return model;
    }

    @RequestMapping("/serviciiLeasing")
    public ModelAndView doServiciiLeasing(HttpServletRequest request,
                                          HttpServletResponse response) {
        ModelAndView model = new ModelAndView("serviciiLeasing");
        return model;
    }

    @RequestMapping("/serviciiLaSchimb")
    public ModelAndView doServiciiLaSchimb(HttpServletRequest request,
                                           HttpServletResponse response) {
        ModelAndView model = new ModelAndView("serviciiLaSchimb");
        return model;
    }

    @RequestMapping("/asigurare")
    public ModelAndView doasigurare(HttpServletRequest request,
                                    HttpServletResponse response) {
        ModelAndView model = new ModelAndView("asigurare");
        return model;
    }

}
