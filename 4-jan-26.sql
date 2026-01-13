SELECT hire_date,last_name,email  as "my mail",salary
FROM employees;

desc employees;

select first_name||' '||last_name as "full name"
from employees;

SELECT 'my first name is'||first_name||'mylast name is'||last_name
from employees;

select distinct department_id from employees;
SELECT   first_name from employees;

SELECT last_name,salary
from employess
where salary BETWEEN 2000 and 5000;

select last_name,salary,email
from employees
where salary BETWEEN 2000 and 3500 and last_name like '_%s%_';

select last_name,salary,email,hire_date
from employees
where last_name='Chen';

select last_name,salary,email
from employees
where hire_date='05-Feb-06';

select last_name,salary,email,commission_pct
from employees
where commission_pct is null;

select last_name,salary,email,commission_pct
from employees
where commission_pct is not null;