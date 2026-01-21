create a table and name using your id 
preceded by emp (as emp106588),which have
5 field as eid,ename,salary,hire_date and 
address with appropriate data types and create
primary key on eid.

and insert any 5 row.

displays the department numbers and average salaries for those departments with 
maximum salary that is greater than 12000?

display the name whose name start from 's'?

display the avg salary of employees of department sales?


select department_id, avg(salary)
from employees
group by departments
where max salary>12000;