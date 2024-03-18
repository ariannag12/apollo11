drop schema if exists eros cascade;
drop user if exists eros;

create user eros with password 'password';
create schema authorization eros;