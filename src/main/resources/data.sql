/**
 * Author:  Carlos Henrique
 * Created: Nov 21, 2018
 */

insert into role (id, name) values (1, 'ROLE_ADMIN'), (2, 'ROLE_USER');

insert into user (iduser, email, name, password, profile, active) values
(1, 'admin@hotmail.com', 'Administrador', '$2a$10$CSBeJJWPgIi0yTJJk75SHuyrhlAhfqMIUPi/nTLbv55581TJTmW0y', 'ADMIN', true),
(2, 'user@hotmail.com', 'Usuario', '$2a$10$CSBeJJWPgIi0yTJJk75SHuyrhlAhfqMIUPi/nTLbv55581TJTmW0y', 'USER', true);

insert into user_role (user_id, role_id) values (1, 1), (1, 2), (2, 2);

-- email: admin@hotmail.com    /   password: qwerty
-- email: user@hotmail.com     /   password: qwerty
