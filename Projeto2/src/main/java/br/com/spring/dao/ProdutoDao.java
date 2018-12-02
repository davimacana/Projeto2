package br.com.spring.dao;

import java.util.List;

import br.com.spring.model.Produto;

/**
 * @author Davi Maçana
 *
 */
public interface ProdutoDao {
	
	public List<Produto> retornaProdutos() ;
}
