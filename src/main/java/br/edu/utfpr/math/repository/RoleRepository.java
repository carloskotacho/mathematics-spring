package br.edu.utfpr.math.repository;

import br.edu.utfpr.math.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Carlos Henrique
 */
public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);
}
