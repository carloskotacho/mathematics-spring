package br.edu.utfpr.math.model.repository;

import br.edu.utfpr.math.builder.ConeBuilder;
import br.edu.utfpr.math.builder.CubeBuilder;
import br.edu.utfpr.math.builder.CylinderBuilder;
import br.edu.utfpr.math.builder.PyramidBuilder;
import br.edu.utfpr.math.model.Solid;
import br.edu.utfpr.math.repository.SolidRepository;
import br.edu.utfpr.math.util.Util;
import java.io.IOException;
import java.util.List;
import org.junit.After;
import static org.junit.Assert.assertFalse;
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
public class SolidRepositoryTest {

    @Autowired
    SolidRepository repository;

    public SolidRepositoryTest() {
    }

    @Before
    public void setUp() throws IOException {
        Util util = new Util();
        ConeBuilder cone = new ConeBuilder(3, 4, 5);
        CubeBuilder cube = new CubeBuilder(2);
        CylinderBuilder cylinder = new CylinderBuilder(3, 5);
        PyramidBuilder pyramind = new PyramidBuilder(4, 2, 2, 5, "quadrangular");

        repository.save(util.constructSolid(cone));
        repository.save(util.constructSolid(cube));
        repository.save(util.constructSolid(cylinder));
        repository.save(util.constructSolid(pyramind));
    }

    @After
    public void tearDown() {
        repository.deleteAll();
    }

    @Test
    public void findAll() {
        final List<Solid> solids = repository.findAll();
        assertFalse(solids.isEmpty());
    }
}
