select employee_id,last_name
from employees
where department_id in (
select department_id
from employees
where last_name like '%u%');

select last_name,department_id,job_id
from employees 
where department_id in (
select department_id
from departments
where location_id= 1700);

select last_name ,salary 
from employees
where manager_id in (
select manager_id 
from employees 
where last_name='King');

select job_id,