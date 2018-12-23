package br.edu.utfpr.math.dto;

import br.edu.utfpr.math.model.Role;
import java.util.List;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import lombok.Getter;

/**
 *
 * @author Carlos Henrique
 */
@Getter
public class UserDTO {
    
    @NotBlank(message = "{name.not.blank}")
    private String name;
    @NotBlank(message = "{email.not.blank}")
    @Email(message = "{email.not.valid}")
    private String email;
    @NotBlank(message = "{password.not.blank}")
    private String password;
    
    /*
    private String profile;
    private Boolean active;
    private List<Role> roles;
    */
}
