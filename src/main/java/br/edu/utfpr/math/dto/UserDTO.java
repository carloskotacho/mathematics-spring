package br.edu.utfpr.math.dto;

import br.edu.utfpr.math.model.Role;
import java.util.List;
import lombok.Getter;

/**
 *
 * @author Carlos Henrique
 */
@Getter
public class UserDTO {
    
    private String name;
    private String email;
    private String password;
    
    /*
    private String profile;
    private Boolean active;
    private List<Role> roles;
    */
}
