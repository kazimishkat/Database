1.create a table and name using your id 
preceded by emp (as emp106588),which have
5 field as eid,ename,salary,hire_date and 
address with appropriate data types and create
primary key on eid.

and insert any 5 row.

2.displays the department numbers and average salaries for those departments with 
maximum salary that is greater than 12000?

3.display the name whose name start from 's'?

4.display the avg salary of employees of department sales?


ans:2. 
select department_id,avg(salary)
from EMPLOYEES
group by department_id
having max(salary)>12000;

ans:3.
SELECT first_name FROM employees WHERE first_name LIKE 'S%';

ans:4,
SELECT AVG(salary) AS avg_salary 
FROM employees
WHERE department_id = 
  ( SELECT department_id FROM departments WHERE department_name = 'Sales' );
