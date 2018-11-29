package br.edu.utfpr.math;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class MathematicsSpringApplication {

    public static void main(String[] args) {
        SpringApplication.run(MathematicsSpringApplication.class, args);
        System.out.println("Senha gerada: " + new BCryptPasswordEncoder().encode("qwerty"));
    }
}
