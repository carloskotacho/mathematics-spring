package br.edu.utfpr.math.builder;

public class PyramidBuilder extends SolidBuilder {

    private double height;
    private double sideBase;
    private double apothemBase;
    private double apothemPyramid;
    private String type;
    //private int type;
    private int nFaces;

    public PyramidBuilder(double height, double sideBase, double apothemBase, double apothemPyramid, String type) {
        this.height = height;
        this.sideBase = sideBase;
        this.apothemBase = apothemBase;
        this.apothemPyramid = apothemPyramid;
        this.type = type;
        this.nFaces = 0;
    }

    public PyramidBuilder() {
    }

    @Override
    public void name() {
        solid.name = "Pirâmide " + type;
    }

    @Override
    public void areaBase() {

        if (type.equals("triangular")) { // type == 1
            solid.areaBase = (sideBase * apothemBase) / 2;
            nFaces = 3;
        } else if (type.equals("quadrangular")) { // type == 2
            solid.areaBase = sideBase * sideBase;
            nFaces = 4;
        } else if (type.equals("pentagonal")) { // type == 3
            solid.areaBase = 5 * ((sideBase * apothemBase) / 2);
            nFaces = 5;
        } else {
            solid.areaBase = 6 * ((sideBase * apothemBase) / 2);
            nFaces = 6;
        }

    }

    /**
     * Al = soma das �reas de todas as faces laterais
     *
     */
    @Override
    public void areaSide() {
        solid.areaSide = nFaces * ((sideBase * apothemPyramid) / 2);
    }

    /**
     * At = Al + Ab
     *
     */
    @Override
    public void areaTotal() {
        solid.areaTotal = solid.areaSide + solid.areaBase;
    }

    /**
     * V = 1/3 Ab.h
     *
     */
    @Override
    public void volume() {
        solid.volume = (solid.areaBase * height) / 3;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getSideBase() {
        return sideBase;
    }

    public void setSideBase(double sideBase) {
        this.sideBase = sideBase;
    }

    public double getApothemBase() {
        return apothemBase;
    }

    public void setApothemBase(double apothemBase) {
        this.apothemBase = apothemBase;
    }

    public double getApothemPyramid() {
        return apothemPyramid;
    }

    public void setApothemPyramid(double apothemPyramid) {
        this.apothemPyramid = apothemPyramid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getnFaces() {
        return nFaces;
    }

    public void setnFaces(int nFaces) {
        this.nFaces = nFaces;
    }

}
