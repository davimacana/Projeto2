package br.com.spring.controller;

import java.util.Calendar;

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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.spring.model.Produto;
import br.com.spring.service.ProdutoService;

@Controller
@RequestMapping("produto")
public class ProdutoController {
	
	@Autowired
	private ProdutoService produtoService;
	
	@GetMapping("")
	public ModelAndView carregaProdutos(ModelMap model) {
		model.addAttribute("produtos", produtoService.retornaProdutos());
		return new ModelAndView("/produto/produto", model);
	}
	
	@GetMapping("editar/{id}")
	public ModelAndView carregarEditar(@PathVariable("id") Long id, ModelMap model) {
		model.addAttribute("produto", produtoService.consultarProduto(id));
		return new ModelAndView("/produto/editarSalvarProduto", model);
	}
	
	@PostMapping("editar")
	public ModelAndView editar(@Valid @ModelAttribute("produto") Produto produto, BindingResult result, RedirectAttributes attr) {
		if (result.hasErrors()) {
			return new ModelAndView("/produto/editarSalvarProduto");
		}
		produto.setDataAtualizacao(Calendar.getInstance().getTime());
		produtoService.editar(produto);
		attr.addFlashAttribute("message", "Produto alterado com sucesso.");
		return new ModelAndView("redirect:/produto");
	}

	@GetMapping("excluir/{id}")
	public String excluir(@PathVariable("id") Long id, RedirectAttributes attr) {
		produtoService.excluir(id);
		attr.addFlashAttribute("message", "Produto excluído com sucesso.");
		return "redirect:/produto";
	}
	
	@GetMapping("/cadastrar")
	public ModelAndView carregarInserir(@ModelAttribute("produto") Produto produto) {
		return new ModelAndView("/produto/editarSalvarProduto");
	}
	
	@PostMapping("/inserir")
	public ModelAndView inserir(@Valid @ModelAttribute("produto") Produto produto, BindingResult result, RedirectAttributes attr) {
		if (result.hasErrors()) {
			return new ModelAndView("/produto/editarSalvarProduto");
		}
		produto.setDataAtualizacao(Calendar.getInstance().getTime());
		produtoService.salvar(produto);
		attr.addFlashAttribute("message", "Produto inserido com sucesso.");
		return new ModelAndView("redirect:/produto");
	}
}