package br.edu.utfpr.math.builder;

public class CylinderBuilder extends SolidBuilder {

    private double r;
    private double height;

    public CylinderBuilder(double r, double height) {
        this.r = r;
        this.height = height;
    }

    public CylinderBuilder() {
    }

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
}
