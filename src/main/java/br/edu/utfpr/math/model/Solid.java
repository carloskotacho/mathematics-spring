package br.edu.utfpr.math.model;

import br.edu.utfpr.math.util.EntityApplication;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Carlos Henrique
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "solid")
public class Solid extends EntityApplication {

    @Column
    public String name;

    @Column(name = "area_base")
    public double areaBase;

    @Column(name = "area_side")
    public double areaSide;

    @Column(name = "area_total")
    public double areaTotal;

    @Column
    public double volume;
}
