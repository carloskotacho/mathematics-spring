package br.edu.utfpr.math.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 *
 * @author Carlos Henrique
 */
@Configuration
public class JdbcSecurityConfig {

    public static final String USER_BY_EMAIL = "SELECT email, password, active, name FROM user"
            + " WHERE email = ?";

    public static final String ROLE_BY_USER = "SELECT u.email, r.name as name_role FROM user_role ur"
            + " JOIN user u ON u.id = ur.user_id"
            + " JOIN role r ON r.id = ur.role_id"
            + " WHERE u.email = ?";

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder builder,
            PasswordEncoder passwordEncoder,
            DataSource dataSource) throws Exception {
        builder
                .jdbcAuthentication()
                .dataSource(dataSource)
                .passwordEncoder(passwordEncoder)
                .usersByUsernameQuery(USER_BY_EMAIL)
                .authoritiesByUsernameQuery(ROLE_BY_USER);
    }
}
