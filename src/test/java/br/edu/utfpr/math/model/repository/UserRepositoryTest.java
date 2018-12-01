package br.edu.utfpr.math.model.repository;

import br.edu.utfpr.math.model.Role;
import br.edu.utfpr.math.model.User;
import br.edu.utfpr.math.repository.UserRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

/**
 *
 * @author Carlos Henrique
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@ActiveProfiles("test")
public class UserRepositoryTest {

    @Autowired
    UserRepository userRepository;

    public UserRepositoryTest() {
    }

    @Before
    public void setUp() {
//        User carlos = new User(1L, "Carlos Henrique", "carlos.2018@hotmail.com", "qwerty", null);
//        userRepository.save(carlos);
    }

    @After
    public void tearDown() {
//        userRepository.deleteAll();
    }

    @Test
    public void findAllByEmail() {

//        final User admin = userRepository.findByEmail("admin@hotmail.com");
//        Assert.assertEquals("Admin", admin.getName());
    }
}
