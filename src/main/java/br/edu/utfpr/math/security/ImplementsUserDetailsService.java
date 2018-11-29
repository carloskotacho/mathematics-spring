package br.edu.utfpr.math.security;

import br.edu.utfpr.math.model.User;
import br.edu.utfpr.math.repository.UserRepository;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Carlos Henrique
 */
@Repository
@Transactional
public class ImplementsUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository ur;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = ur.findByEmail(email);

        if (user == null) {
            throw new UsernameNotFoundException("Usuario não encontrado!");
        }
        //return new User(usuario.getUsername(), usuario.getPassword(), true, true, true, true, usuario.getAuthorities());
        return user;
    }

}
