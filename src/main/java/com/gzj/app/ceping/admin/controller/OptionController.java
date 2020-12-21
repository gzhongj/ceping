package com.gzj.app.ceping.admin.controller;

import com.gzj.app.ceping.admin.entity.Options;
import com.gzj.app.ceping.admin.service.IOptionService;
import com.gzj.app.ceping.admin.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * 
 * @author guozhongjie
 *
 */
@Controller
@RequestMapping("/option")
public class OptionController extends SuperController {

	@Autowired
	private IOptionService optionService;

	@Autowired
	private IQuestionService questionService;

	@RequestMapping("/add")
	public ModelAndView add(@ModelAttribute(value = "option") Options option, BindingResult result,HttpServletRequest request) {
		return new ModelAndView("option/add").addObject("option", option);
	}

	@RequestMapping("/list")
	public ModelAndView list(HttpServletRequest request) {
		return new ModelAndView ("option/list").addObject("data");
	}

	@RequestMapping("/edit")
	public ModelAndView edit(HttpServletRequest request) {
		Options option = optionService.getById(request.getParameter("id"));
		return new ModelAndView("option/add").addObject("option", option);
	}

	@RequestMapping("/delete")
	public ModelAndView delete(HttpServletRequest request) {
		optionService.delete(request.getParameter("id"));
		return new ModelAndView("/option/list");
	}

	private ModelAndView wrap(ModelAndView mv) {
		return mv.addObject("questions", questionService.list(null));
	}

}
