package br.edu.utfpr.math.model.repository;

import br.edu.utfpr.math.model.User;
import br.edu.utfpr.math.repository.UserRepository;
import org.junit.After;
import static org.junit.Assert.assertEquals;
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
    UserRepository repository;

    public UserRepositoryTest() {
    }

    @Before
    public void setUp() {
        User carlos = new User("Carlos Henrique", "carlos.2018@hotmail.com", "qwerty", "ADMIN", "1", null);
        carlos.setId(1L);
        repository.save(carlos);
    }

    @After
    public void tearDown() {
        repository.deleteAll();
    }

    @Test
    public void findAllByEmail() {
        final User admin = repository.findByEmail("carlos.2018@hotmail.com");
        assertEquals("Carlos Henrique", admin.getName());
    }
}
