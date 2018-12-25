package br.edu.utfpr.math.model.repository;

import br.edu.utfpr.math.model.Role;
import br.edu.utfpr.math.repository.RoleRepository;
import java.util.List;
import org.junit.After;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
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
public class RoleRepositoryTest {

    @Autowired
    RoleRepository repository;

    public RoleRepositoryTest() {
    }

    @Before
    public void setUp() {
        // Teste com arquivo data.sql
    }

    @After
    public void tearDown() {
    }

    @Test
    public void getOne() {
        Role role = repository.getOne(1L);
        assertNotNull(role);
    }

    @Test
    public void findByName() {
        Role role = repository.findByName("ROLE_USER");
        assertNotNull(role);
    }

    @Test
    public void findAll() {
        List<Role> roles = repository.findAll();
        assertFalse(roles.isEmpty());
    }
}
