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
public class CylinderBuilder extends SolidBuilder {

    private double r;
    private double height;

    @Override
    public void name() {
        solid.name = "Cilindro";
    }

    @Override
    public void areaBase() {
        solid.areaBase = Math.PI * r * r;
    }

    @Override
    public void areaSide() { // lateral
        solid.areaSide = 2 * Math.PI * r * height;
    }

    @Override
    public void areaTotal() {
        solid.areaTotal = (2 * solid.areaBase) + solid.areaSide;
    }

    @Override
    public void volume() {
        solid.volume = solid.areaBase * height;
    }
}
