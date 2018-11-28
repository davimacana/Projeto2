package br.com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Davi Maçana
 *
 */
@Controller
@RequestMapping(value = "/")
public class InicioController {
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView inicio() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}

}
