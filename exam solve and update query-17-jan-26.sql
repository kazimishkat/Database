update emp1122 set (emp_name,emp_salary)=
(select last_name,salary from employees where employee_id=102)
where emp_id= 5
commit;
select * from emp1122;
select * from students ;

select s.stu_name,s.stu_dob,s.blood_grp,e.emp_salary
from students s join emp1122 e
on s.stu_id = e.emp_id;

delete from students
where stu_id=1;
rollback;
select * from departments;


--exam

select e.first_name,e.last_name,d.department_name,l.city,l.state_province
from employees e join departments d
on e.department_id= d.department_id
join locations l
on d.location_id=l.location_id;

select e.first_name,e.last_name,e.salary,j.grade
from employees e join job_grades j
on e.salary between j.lowest_sal and j.highest_sal;


select e.first_name,e.last_name,d.department_name,l.city,l.state_province
from employees e join departments d
on e.department_id=d.department_id
join locations l
on d.location_id=l.location_id
where first_name like '%z%';

select first_name,last_name,salary
from employees
where salary< (select salary from employees where employee_id=182);

select e.first_name,m.first_name
from employees e join employees m
on m.manager_id=e.employee_id;


