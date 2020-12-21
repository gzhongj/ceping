package com.gzj.app.ceping.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 首页
 *
 * @author guozhongjie
 */
@Controller
public class IndexController extends SuperController {

    @RequestMapping(value = {"/", "", "/*"})
    public ModelAndView index(HttpServletRequest request) {
        return new ModelAndView("index");
    }

}
