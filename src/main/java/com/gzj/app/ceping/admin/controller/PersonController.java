package com.gzj.app.ceping.admin.controller;

import com.gzj.app.ceping.admin.entity.Person;
import com.gzj.app.ceping.admin.service.IPersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author guozhongjie
 */
@Controller
@RequestMapping("/person")
public class PersonController extends SuperController {

    @Value("${upload.path}")
    private String uploadPath;

    @Autowired
    private IPersonService personService;

    @RequestMapping("/add")
    public ModelAndView add(@ModelAttribute Person person, BindingResult result, String[] tags, HttpServletRequest request) {
        personService.saveOrUpdate(person);
        return new ModelAndView("list");
    }

    @RequestMapping("/edit")
    public ModelAndView edit(HttpServletRequest request) {
        Person person = personService.getById(request.getParameter("id"));
        char[] tags = new char[5];
        String[] tagArr = new String[tags.length];
        for (int i = 0; i < tags.length; i++) {
            tagArr[i] = String.valueOf(tags[i]);
        }
        return new ModelAndView("person/add").addObject("person", person).addObject("tags", tagArr);
    }

    @RequestMapping("/delete")
    public ModelAndView delete(HttpServletRequest request) {
        personService.delete(request.getParameter("id"));
        return new ModelAndView("/person/list");
    }

    @RequestMapping("/list")
    public ModelAndView list(HttpServletRequest request) {
        return new ModelAndView("person/list").addObject("data");
    }

}
