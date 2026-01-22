alter SESSION set container = orclpdb;

create user demo
IDENTIFIED by
demo;

grant create session , create table, create SEQUENCE, create view
to demo;

create role students;

grant create table,create view,select any table,insert any table
to students;

grant students to demo;

alter user demo quota unlimited on users;

commit;