package com.gzj.app.ceping.admin.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
 * 全局异常处理器
 * 
 * @author guozhongjie
 *
 */
@ControllerAdvice
public class GlobalExceptionHandler {

	public static final String ERROR_VIEW = "commons/error";

	@ExceptionHandler(value = Exception.class)
	public ModelAndView defaultErrorHandler(HttpServletRequest request, Exception e) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", e);
		mav.addObject("url", request.getRequestURL());
		mav.addObject("method", request.getMethod());
		// mav.addObject("query",request.getQueryString());
		mav.addObject("query", request.getParameterMap());
		mav.addObject("feedback", "chr-s-op@58ganji.com");
		mav.setViewName(ERROR_VIEW);
		return mav;
	}
}
