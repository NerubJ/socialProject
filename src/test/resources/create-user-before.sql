delete from user_roles;
delete from usr;

insert into user(id, active, password, username) values
(1, true, '', 'admin'),
(2, true, '', 'mike');

insert into user_roles(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');