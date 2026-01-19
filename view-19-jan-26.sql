create view emp_com
as select last_name,salary,commission_pct
from employees
where commission_pct is not null
order by salary,commission_pct desc;

SELECT * from emp_com;

create view emp_lastname 
as select initcap(last_name)"last name",length(last_name) "length"
from employees
where last_name like 'A%'or last_name like 'J%' or last_name like 'M%'
order by 1;

select * from emp_lastname;