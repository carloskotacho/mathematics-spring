package br.edu.utfpr.math.builder;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Carlos Henrique
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class ConeBuilder extends SolidBuilder {

    private double r;
    private double height;
    private double generatrix;

    @Override
    public void name() {
        solid.name = "Cone";
    }

    @Override
    public void areaBase() {
        solid.areaBase = Math.PI * r * r;
    }

    @Override
    public void areaSide() {
        solid.areaSide = Math.PI * r * generatrix;
    }

    @Override
    public void areaTotal() {
        solid.areaTotal = Math.PI * r * (generatrix + r);
    }

    @Override
    public void volume() {
        solid.volume = (Math.PI * r * r * height) / 3;
    }
}
