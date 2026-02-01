create table emp1294711 (
eid number not null,
ename varchar(50),
salary number,
hire_Date date,
address varchar2(100)


)
alter table emp1294711
add CONSTRAINT hr_emp1294711_eid_pk primary key(eid);

select department_id,avg(salary)
from employees
group by department_id
having max(salary)>12000;

select first_name
from employees
where first_name like 'S%';

select avg(salary)
from employees
where department_id =
(SELECT department_id from departments where department_name='Sales');


select first_name,last_name,hire_date
from employees
order by hire_date;