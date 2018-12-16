package br.edu.utfpr.math.builder;

import lombok.Data;

/**
 *
 * @author Carlos Henrique
 */
@Data
public class PyramidBuilder extends SolidBuilder {

    private double height;
    private double sideBase;
    private double apothemBase;
    private double apothemPyramid;
    private String type;
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

        if (type.equals("triangular")) {
            solid.areaBase = (sideBase * apothemBase) / 2;
            nFaces = 3;
        } else if (type.equals("quadrangular")) {
            solid.areaBase = sideBase * sideBase;
            nFaces = 4;
        } else if (type.equals("pentagonal")) {
            solid.areaBase = 5 * ((sideBase * apothemBase) / 2);
            nFaces = 5;
        } else {
            solid.areaBase = 6 * ((sideBase * apothemBase) / 2);
            nFaces = 6;
        }

    }

    /* Al = soma das areas de todas as faces laterais */
    @Override
    public void areaSide() {
        solid.areaSide = nFaces * ((sideBase * apothemPyramid) / 2);
    }

    /* At = Al + Ab */
    @Override
    public void areaTotal() {
        solid.areaTotal = solid.areaSide + solid.areaBase;
    }

    /* V = 1/3 Ab.h */
    @Override
    public void volume() {
        solid.volume = (solid.areaBase * height) / 3;
    }
}
