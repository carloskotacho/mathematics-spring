package br.edu.utfpr.math.builder;

import br.edu.utfpr.math.model.Solid;

/**
 *
 * @author Carlos Henrique
 */
public class MathematicsDirector {

    protected SolidBuilder mount;

    public MathematicsDirector(SolidBuilder mount) {
        this.mount = mount;
    }

    public void constructSolid() {
        mount.name();
        mount.areaBase();
        mount.areaSide();
        mount.areaTotal();
        mount.volume();
    }

    public Solid getSolid() {
        return mount.getSolid();
    }

}
