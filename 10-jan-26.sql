select first_name,last_name,salary,hire_date
from employees
where hire_date>= '01-jan-97' ;

select last_name,salary,commission_pct
from employees
where commission_pct is not null
order by salary desc;

select location_id,street_address,city,state_province,country_name
from locations
natural join countries;

select last_name,department_id,department_name
from departments
natural join employees;

select last_name,job_id,department_id,department_name
from employees
natural join departments;

select e.last_name Employee,e.employee_id emp#,m.last_name manager,m.manager_id mgr#
from employees e join employees m
on e.manager_id=m.employee_id
order by 2;

--subquery
select last_name,salary,hire_date
from employees
where hire_date>
(select hire_date
from employees
where last_name='Davies'
)order by hire_date;

select last_name,job_id,salary
from employees
where salary>
(select max (salary)
from employees
where job_id='IT_PROG' 
);


select first_name,last_name, salary
from employees
where salary=(
select max(salary)
from employees
where salary< (
select max(salary)
from employees 
));

select last_name,first_name,employee_id
from employees
--where manager_id=120;
where employee_id = 
(select manager_id
from employees
where manager_id = 120);

select last_name,first_name,job_id
from employees
where job_id in (
select job_id
from employees
where manager_id=120);

select last_name,job_id,salary
from employees
where job_id in 
(select job_id
from employees
where last_name='Taylor')
and salary in 
(select salary
from employees
where last_name='Taylor');

select last_name,job_id,max (salary)
from employees
where job_id in (
select salary
from employees
where last_name='Taylor');

select department_id,min(salary)
from employees
group by department_id
having min(salary)>
(select min(salary)
from employees
where department_id = 30);