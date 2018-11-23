package br.edu.utfpr.math.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
public class Solid implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

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
