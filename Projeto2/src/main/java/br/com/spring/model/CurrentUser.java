package br.com.spring.model;

import org.springframework.security.core.authority.AuthorityUtils;

public class CurrentUser extends org.springframework.security.core.userdetails.User {
	
	private static final long serialVersionUID = 1L;
	private Usuario usuario;

    public CurrentUser(Usuario user) {
        super(user.getEmail(), user.getPassword(), AuthorityUtils.createAuthorityList(user.getPerfil().toString()));
        this.usuario = user;
    }
    
    public Usuario getUser() {
        return usuario;
    }

    public Long getId() {
        return usuario.getId();
    }

    public Perfil getPerfil() {
        return usuario.getPerfil();
    }
}
