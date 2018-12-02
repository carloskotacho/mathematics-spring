package br.edu.utfpr.math.builder;

/**
 *
 * @author Carlos Henrique
 */
public class ConeBuilder extends SolidBuilder {

    private double r;
    private double height;
    private double generatrix;

    public ConeBuilder(double r, double height, double generatrix) {
        this.r = r;
        this.height = height;
        this.generatrix = generatrix;
    }

    public ConeBuilder() {
    }

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

    public double getR() {
        return r;
    }

    public void setR(double r) {
        this.r = r;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getGeneratrix() {
        return generatrix;
    }

    public void setGeneratrix(double generatrix) {
        this.generatrix = generatrix;
    }
}
