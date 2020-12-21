package com.gzj.app.ceping.admin.controller;

import com.gzj.app.ceping.admin.entity.Question;
import com.gzj.app.ceping.admin.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("/question")
public class QuestionController extends SuperController {

    @Autowired
    private IQuestionService questionService;


    @RequestMapping("/add")
    public ModelAndView add(@ModelAttribute Question question, BindingResult result, HttpServletRequest request) {
        questionService.saveOrUpdate(question);
        return new ModelAndView("question/add");
    }

    @RequestMapping("/edit")
    public ModelAndView edit(HttpServletRequest request) {
        return new ModelAndView("question/add");
    }

    @RequestMapping("/delete")
    public ModelAndView delete(HttpServletRequest request) {
        questionService.delete(Integer.valueOf(request.getParameter("id")));
        return new ModelAndView("/question/list");
    }

    @RequestMapping("/list")
    public ModelAndView list(HttpServletRequest request) {
        return new ModelAndView("question/list").addObject("data", questionService.list(null));
    }

}
