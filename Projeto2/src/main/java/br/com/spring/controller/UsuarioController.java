package br.com.spring.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.spring.model.Produto;
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
	public ModelAndView carregaUsuarios(ModelMap model) {
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
	
	@GetMapping("editar/{id}")
	public ModelAndView carregarEditar(@PathVariable("id") Long id, ModelMap model) {
		model.addAttribute("usuario", usuarioService.consultarId(id));
		return new ModelAndView("/usuario/editarSalvarUsuario", model);
	}
	
	@PostMapping("editar")
	public ModelAndView editar(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult result, RedirectAttributes attr) {
		if (result.hasErrors()) {
			return new ModelAndView("/usuario/editarSalvarUsuario");
		}
		usuarioService.editar(usuario);
		attr.addFlashAttribute("message", "Usuario alterado com sucesso.");
		return new ModelAndView("redirect:/usuario");
	}
	
	@GetMapping("desativar/{id}")
	public @ResponseBody boolean excluir(@PathVariable("id") Long id, RedirectAttributes attr) {
		return usuarioService.desativarUsuario();
	}

}
