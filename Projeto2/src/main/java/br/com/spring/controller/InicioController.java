package br.com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Davi Maçana
 *
 */
@Controller
public class InicioController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String inicio() {
		return "inicio";
	}

}
