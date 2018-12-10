package br.com.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.spring.model.Usuario;
import br.com.spring.service.UsuarioService;

/**
 * @author Davi Maçana
 *
 */
@Controller
@RequestMapping(value="/usuario")
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService; 
	
	@GetMapping("")
	public ModelAndView carregaProdutos(ModelMap model) {
		model.addAttribute("usuarios", usuarioService.retornaUsuarios());
		return new ModelAndView("/usuario/usuario", model);
	}
	
	@GetMapping("/cadastrar")
	public ModelAndView carregarInserir(@ModelAttribute("usuario") Usuario usuario) {
		return new ModelAndView("/usuario/editarSalvarUsuario");
	}
	
	@PostMapping("/inserir")
	public ModelAndView inserir(@Valid @ModelAttribute("usuario") Usuario usuario, RedirectAttributes attr) {
		usuarioService.salvarUsuario(usuario);
		attr.addFlashAttribute("message", "Usuario inserido com sucesso.");
		return new ModelAndView("redirect:/usuario");
	}

}
