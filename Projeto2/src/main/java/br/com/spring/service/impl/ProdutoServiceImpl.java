package br.com.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.spring.dao.ProdutoDao;
import br.com.spring.model.Produto;
import br.com.spring.service.ProdutoService;

/**
 * @author Davi Maçana
 *
 */
@Service
public class ProdutoServiceImpl implements ProdutoService {

	@Autowired
	private ProdutoDao produtoDAO;
	
	public List<Produto> retornaProdutos() {
		return produtoDAO.retornaProdutos();
	}
}
