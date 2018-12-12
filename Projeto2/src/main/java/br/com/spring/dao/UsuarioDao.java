package br.com.spring.dao;

import java.util.List;

import br.com.spring.model.Usuario;

/**
 * @author Davi Maçana
 *
 */
public interface UsuarioDao {

	Usuario findByEmail(String email);
	void atualizarUsuario(Usuario usuario);
	void salvarUsuario(Usuario usuario);
	List<Usuario> retornaUsuarios();
	Usuario consultarId(Long id);
	
}
