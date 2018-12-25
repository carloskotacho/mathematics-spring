/**
 * Author:  Carlos Henrique
 * Created: Nov 21, 2018
 */

insert into role (id, name, created_at, update_at) values (1, 'ROLE_ADMIN', '2018-12-02', '2018-12-02'),
(2, 'ROLE_USER', '2018-12-02', '2018-12-02');

insert into user (id, email, name, password, profile, created_at, update_at, active) values
(1, 'admin@hotmail.com', 'Administrador', '$2a$10$CSBeJJWPgIi0yTJJk75SHuyrhlAhfqMIUPi/nTLbv55581TJTmW0y', 'ADMIN', '2018-12-02', '2018-12-02',true),
(2, 'user@hotmail.com', 'Usuario', '$2a$10$CSBeJJWPgIi0yTJJk75SHuyrhlAhfqMIUPi/nTLbv55581TJTmW0y', 'USER', '2018-12-02', '2018-12-02', true);

insert into user_role (user_id, role_id) values (1, 1), (1, 2), (2, 2);

-- email: admin@hotmail.com    /   password: qwerty
-- email: user@hotmail.com     /   password: qwerty
