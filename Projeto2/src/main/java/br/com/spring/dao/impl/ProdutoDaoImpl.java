package br.com.spring.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.com.spring.dao.ProdutoDao;
import br.com.spring.model.Produto;

/**
 * @author Davi Maçana
 *
 */
@Repository
public class ProdutoDaoImpl implements ProdutoDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<Produto> retornaProdutos() {
		TypedQuery<Produto> query = em.createQuery("from Produto", Produto.class);
		return query.getResultList();
	}

}
