package br.edu.utfpr.math.builder;

import br.edu.utfpr.math.model.Solid;

public abstract class SolidBuilder {

    protected Solid solid;

    public SolidBuilder() {
        solid = new Solid();
    }

    public abstract void name();

    public abstract void areaBase();

    public abstract void areaSide();

    public abstract void areaTotal();

    public abstract void volume();

    public Solid getSolid() {
        return solid;
    }

}
