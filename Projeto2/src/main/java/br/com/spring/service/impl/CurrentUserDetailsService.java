package br.com.spring.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import br.com.spring.model.CurrentUser;
import br.com.spring.model.Usuario;
import br.com.spring.service.UsuarioService;

@Component
public class CurrentUserDetailsService implements UserDetailsService, ApplicationListener<AuthenticationSuccessEvent> {

	@Autowired
	private UsuarioService usuarioService;

	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Usuario user;		
		try {	
            user = usuarioService.findUserByEmail(email);
        } catch (Exception ex) {
        	throw new UsernameNotFoundException("Não foi encontrado o usuário {" + email + "}");
        }
		return new CurrentUser(user);
	}
	
	public void onApplicationEvent(AuthenticationSuccessEvent event) {
		String userName = ((UserDetails) event.getAuthentication().getPrincipal()).getUsername();
        Usuario user = usuarioService.findUserByEmail(userName);
        user.setUltimoLogin(new Date());
        usuarioService.registrarUltimoLogin(user);
     }
}
