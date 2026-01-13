SELECT
    first_name,
    last_name,
    job_id,
    first_name ||' '||last_name ||' '||job_id "employee and title",salary
from employees
where salary>10000;



select first_name, last_name
from employees
where salary in 10000;

select first_name, last_name
from employees
where department_id in 50;

select first_name, department_id
from employees
where employees like 'S%;

select salary
from employees
where salary>10000;



select first_name, last_name
from employees
where salary in 10000;

select first_name, last_name
from employees
where department_id in 50;

select first_name, last_name, job_id,department_id,hire_date
from employees 
order by hire_date;

select last_name,first_name,hire_date
from employees
where hire_date between '01-JAN-01' and '31-DEC-03'
order by hire_date;
                       
select last_name,first_name,hire_date
from employees
order by hire_date
fetch first 5 rows only;                                                                                                                                                                                                                                                                                                                   first_name

select count(*)
from employees 

select last_name,first_name,salary
from employees
where salary between &from_salary and &to_salary
order by salary;


                                                                                                                                                                                                                                                                                                                   LIKE
                                                                                                                                                                                                                                                                                                                   department_id