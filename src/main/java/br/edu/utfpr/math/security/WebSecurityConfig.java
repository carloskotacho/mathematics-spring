package br.edu.utfpr.math.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 *
 * @author Carlos Henrique
 */
@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private static final String[] PUBLIC_URLS_GET = {
        "/",
        "/entrar",
        "/registrar"
    };

    private static final String[] PUBLIC_URLS_POST = {
        "/registrar"
    };

    private static final String[] USER_URLS_GET = {
        "/u/**"
    };

    private static final String[] USER_URLS_POST = {
        "/u/**"
    };

    private static final String[] ADMIN_URLS_GET = {
        "/**"
    };

    private static final String[] ADMIN_URLS_POST = {
        "/**"
    };

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable().authorizeRequests()
                .antMatchers(PUBLIC_URLS_GET).permitAll()
                .antMatchers(HttpMethod.POST, PUBLIC_URLS_POST).permitAll()
                .antMatchers(HttpMethod.GET, USER_URLS_GET).hasRole("USER")
                .antMatchers(HttpMethod.POST, USER_URLS_POST).hasRole("USER")
                .antMatchers(HttpMethod.GET, ADMIN_URLS_GET).hasRole("ADMIN")
                .antMatchers(HttpMethod.POST, ADMIN_URLS_POST).hasRole("ADMIN")
                .anyRequest().authenticated()
                .and().formLogin().loginPage("/entrar").permitAll()
                .and().logout().logoutSuccessUrl("/entrar?logout").permitAll()
                .and().rememberMe();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**");
    }
}
