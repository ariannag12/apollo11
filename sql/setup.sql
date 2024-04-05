drop table if exists affinity;
drop table if exists users;

-- creazione tabella Users
create table users (
users_id serial primary key, 
name varchar(20) not null,
surname varchar(20) not null,
birth_date date not null,
gender char not null,
email varchar(40) not null,
password varchar(40) not null
);

create table affinity (
affinity_id serial primary key,
users_id integer unique,
smoker char check(smoker in ('Y','N')),
traveler char check(traveler in ('Y','N')),
sporty char check(sporty in ('Y','N'))
);