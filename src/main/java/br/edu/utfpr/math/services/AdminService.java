package br.edu.utfpr.math.services;

import br.edu.utfpr.math.model.User;
import br.edu.utfpr.math.repository.AdminRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Carlos Henrique
 */
@Service
public class AdminService {

    @Autowired
    AdminRepository adminRepository;

    public void save(User user) {
        adminRepository.save(user);
    }

    public List<User> findAll() {
        return adminRepository.findAll();
    }

    public void delete(User user) {
        adminRepository.delete(user);
    }

}
