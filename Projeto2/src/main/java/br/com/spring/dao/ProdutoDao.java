package br.com.spring.dao;

import java.util.List;

import br.com.spring.model.Produto;

/**
 * @author Davi Maçana
 *
 */
public interface ProdutoDao {
	
	public List<Produto> retornaProdutos() ;
	public Produto consultarProduto(Long id);
	public void editar(Produto produto);
	public void salvar(Produto produto);
	public void excluir(Long id);
}
