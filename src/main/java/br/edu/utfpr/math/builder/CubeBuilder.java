package br.edu.utfpr.math.builder;

/**
 *
 * @author Carlos Henrique
 */
public class CubeBuilder extends SolidBuilder {

    private double side;

    public CubeBuilder(double side) {
        this.side = side;
    }

    public CubeBuilder() {
    }

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

    public double getSide() {
        return side;
    }

    public void setSide(double side) {
        this.side = side;
    }
}
