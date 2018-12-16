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
public class CubeBuilder extends SolidBuilder {

    private double side;

    @Override
    public void name() {
        solid.name = "Cubo";
    }

    @Override
    public void areaBase() {
        solid.areaBase = side * side;
    }

    @Override
    public void areaSide() {
        solid.areaSide = 4 * side * side;
    }

    @Override
    public void areaTotal() {
        solid.areaTotal = 6 * side * side;
    }

    @Override
    public void volume() {
        solid.volume = side * side * side;
    }
}
