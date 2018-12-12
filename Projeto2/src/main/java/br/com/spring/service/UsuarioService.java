package br.com.spring.service;

import java.util.List;

import br.com.spring.model.Usuario;

/**
 * @author Davi Maçana
 *
 */
public interface UsuarioService {

	Usuario findUserByEmail(String userName);
	void registrarUltimoLogin(Usuario user);
	void salvarUsuario(Usuario usuario);
	List<Usuario> retornaUsuarios();
	Usuario consultarId(Long id);
	void editar(Usuario usuario);
}
