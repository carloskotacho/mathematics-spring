package br.edu.utfpr.math.repository;

import br.edu.utfpr.math.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Carlos Henrique
 */
public interface AdminRepository extends JpaRepository<User, Long> {
}
