select to_char (sysdate,'HH12:mi')
from dual;

select to_char (sysdate,'ddspth-MMspth-YYYspth')
from dual;

select to_char (sysdate,'ddthsp-MMthsp-YYYthsp')
from dual;

select to_char (sysdate,'ddth-MMth-YYYth')
from dual;

select to_char (sysdate,'ddsp-MMsp-YYYsp')
from dual;

select to_char(sysdate, 'AM')
from dual;

select to_char(sysdate, 'HH12:mi AM')
from dual;

select to_char(sysdate, 'HH12:mi HH')
from dual;

select to_char(sysdate, 'HH12:mi:SS HH24')
from dual;

select to_char(sysdate, 'HH12:mi:SS MI')
from dual

select to_char(sysdate, 'HH12:mi:SS SS')
from dual

select to_char(sysdate, 'HH12:mi:SS SSSSS')
from dual

select to_char(sysdate, 'DD-MM-YY')
from dual

select to_char(sysdate, 'DAY-MONTh-YEAR')
from dual

select last_name,To_CHAR(hire_date,'DD-MON-YYYY')
from dual;

select last_name,To_CHAR(hire_date,'DD-MON-YYYY')
from dual;

select commission_pct,nvl(commission_pct,0),
nvl2(commission_pct,salary+(salary*commission_pct),salary)
from employees;

select last_name,job_id,salary,
CASE job_id WHEN 'IT_PROG' THEN 1.10*salary
            WHEN 'ST_CLERK' THEN 1.15*salary
            WHEN 'SA_REP' THEN 1.20*salary
        ELSE salary END "Revised_salary"
from employees;

select distinct job_id
from employees;

select job_id,max(salary)
from employees
group by job_id
order by 1 desc;

select department_id,count(department_id)
from employees;

select sum (count(department_id))
from employees
group by department_id;

select max(salary),department_id,count(department_id)),job_id
from employees
group by department_id,job_id
order by 4;

select job_id,sum(salary) PAYROLL
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary)>13000
order by sum(salary);

select job_id,sum(salary) PAYROLL
from employees
group by job_id
having sum(salary)>13000
order by sum(salary);

select max(avg(salary))
from employees
group by department_id;