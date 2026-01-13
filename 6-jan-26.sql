select First_Name,Last_Name,Salary
from employees
where salary BETWEEN 4000 and 8000
order by Salary;

select hire_date
from employees
where hire_date > '01-Jan-2023'
order by hire_date desc;

select First_Name,Last_Name,Salary,Department_id
from employees
--where department_id=50 or department_id=80
where department_id in (50,80)
order by department_id ,Last_Name;

select First_Name,Last_Name,
    CONCAT('MY FIRST NAME ',
        CONCAT(First_Name,
            CONCAT(' MY LAST NAME',Last_Name)))
FROM employees;

select last_name, SUBSTR(Last_name,1,3),
CONCAT(SUBSTR(LAST_NAME,1,4),'_US'),
UPPER(CONCAT(SUBSTR(LAST_NAME,1,4),'_US'))
FROM employees
WHERE department_id=60;

SELECT ROUND (576.926, 2)
FROM dual;