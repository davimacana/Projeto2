package br.com.spring.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.spring.model.Usuario;

/**
 * @author Davi Maçana
 *
 */
@Controller
@RequestMapping(value = "/login")
public class LoginController {

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView login(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult result, RedirectAttributes attr) {
		if (result.hasErrors()) {
			return new ModelAndView("login");
		}
		return new ModelAndView("home"); 
	}
	
}
