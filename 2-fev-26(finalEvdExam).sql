--ans.1
create table emp1294711
(eid number not null,
ename varchar(50),
salary number(15),
hire_date date,
address varchar2(100),
CONSTRAINT hr_emp1294711_eid_pk PRIMARY key (eid)
);

--ans:2
alter table emp1294711
add(department_id number,dept_name varchar(50));

--ans:3
insert into emp1294711(eid, salary)
values (&eid, &salary);

--ans:4
create view ename (ename, dept_name, salary) 
as select e.last_name as ename, d.department_name 
as dept_name, e.salary 
from employees e join departments d 
on e.department_id = d.department_id 
where e.department_id = 80;

--ans:5
insert into emp1294711(eid,ename,salary,hire_date,department_id)
(select employee_id,last_name,salary,hire_date,department_id
from employees);

--ans:6
create sequence seq_hr_emp1294711_eid
start with 1
incement by 1
maxvalue 9999;