package br.com.spring.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * @author Davi Maçana
 *
 */
@Configuration
@ComponentScan("br.com.spring")
@EnableWebMvc
public class RootConfig {

}
