package br.com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Davi Maçana
 *
 */
@Controller
@RequestMapping(value = "/")
public class InicioController {
	
	@GetMapping
	public ModelAndView inicio() {
		return new ModelAndView("login");
	}
	
	@GetMapping(value="home")
	public ModelAndView home() {
		return new ModelAndView("home");
	}

}
