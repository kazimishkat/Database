drop table emp1294711;
create table emp1294711(
eid number not null,
ename varchar(50),
salary number,
hire_date date,
address VARCHAR2(100),
CONSTRAINT hr_emp1294711_eid_pk primary key (eid)
);

alter table emp1294711
add (department_id number,dept_name varchar(50));

INSERT into emp1294711(eid,ename,salary,hire_date,address,department_id,dept_name)
values (1,'mishkat',10000,sysdate-150,'noorjahan road',10,'jee');

INSERT into emp1294711(eid,ename,salary,hire_date,address,department_id,dept_name)
values (2,'km',10000,sysdate-150,'s road',80,'nt');

select * from emp1294711;

create view ename as 
select ename,dept_name,salary
from emp1294711
where department_id=80;

drop view ename;

create sequence seq_emp12947_eid 
start with 1
increment by 1 
maxvalue 99999;

insert into emp1294711(eid,ename,salary,hire_date,department_id)
(select employee_id,first_name,salary,hire_date,department_id
from employees);

select * from emp1294711;
commit;

