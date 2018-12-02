package br.com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.spring.model.Usuario;

/**
 * @author Davi Maçana
 *
 */
@Controller
@RequestMapping(value = "/")
public class InicioController {
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView inicio(@ModelAttribute("usuario") Usuario usuario) {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="home" , method = RequestMethod.GET)
	public ModelAndView home() {
		return new ModelAndView("home");
	}

}
