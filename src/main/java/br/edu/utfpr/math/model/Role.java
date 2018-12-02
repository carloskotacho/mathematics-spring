package br.edu.utfpr.math.model;

import br.edu.utfpr.math.util.EntityApplication;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import lombok.Data;

/**
 *
 * @author Carlos Henrique
 */
@Data
@Entity
@Table(name = "role")
public class Role extends EntityApplication {

    @Column(nullable = false)
    private String name;

    @ManyToMany(mappedBy = "roles")
    private List<User> users;

    public Role() {
        super();
    }

    public Role(String name) {
        this.name = name;
    }

}
