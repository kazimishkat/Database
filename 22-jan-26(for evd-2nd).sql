--Q:1
--create a table and name using your id 
--preceded by emp (as emp106588),which have
--5 field as eid,ename,salary,hire_date and 
--address with appropriate data types and create
--primary key on eid.
--
--and insert any 5 row.
--
--Q:2-displays the department numbers and average salaries for those departments with 
--maximum salary that is greater than 12000?
--
--Q:3-display the name whose name start from 's'?
--
--Q:4display the avg salary of employees of department sales?

--Ans:1
create table emp(
eid number not null,
ename VARCHAR2(50),
salary number,
hire_date date,
address VARCHAR2(100),

constraint hr_emp_eid primary key (eid)
)
insert into emp(eid,ename,salary,hire_date,address)
values (1,'mishkat',10000,sysdate-150,'mohammadpur');

select * from emp;
commit;

--Ans:2
select department_id,avg(salary)
from employees
group by department_id
having max(salary)>12000;

--Ans:3
select first_name
from employees
where first_name like 'S%';

--Ans:4
select avg(e.salary)
from employees e join departments d
on e.department_id=d.department_id
where department_name='Sales';

--Ans:5
select first_name,hire_date
from employees
order by hire_date;
