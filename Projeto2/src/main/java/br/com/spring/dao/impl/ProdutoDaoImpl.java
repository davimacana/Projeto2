package br.com.spring.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

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

	@Override
	public Produto consultarProduto(Long id) {
		return em.find(Produto.class, id);
	}

	@Override
	@Transactional
	public void editar(Produto produto) {
		em.merge(produto);
	}
	
	@Override
	@Transactional
	public void salvar(Produto produto) {
		em.persist(produto);
	}

	@Override
	@Transactional
	public void excluir(Long id) {
		em.remove(em.getReference(Produto.class, id));
	}

}
