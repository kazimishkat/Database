 select 
 first_name,
 last_name,
 salary,
 job_id,
 department_name,
 location_id
 from employees
 NATURAL JOIN departments;
 
 SELECT employee_id,first_name,last_name,job_id,job_title
 from employees
 NATURAL JOIN jobs;
 
 select employee_id,last_name,location_id,department_id
 from employees join departments
 using (department_id);
 
 select e.first_name,e.last_name,e.salary,d.department_name
 from employees e
 join departments d
 on d.department_id=e.department_id;
 
 select e.first_name,e.last_name,e.salary,d.department_name,l.street_address,l.city,c.country_name
 from employees e
 join departments d
 on d.department_id=e.department_id
 join locations l
 on l.location_id=d.location_id
 join countries c
 on c.country_id=l.country_id;
 
 select e.last_name,e.salary,j.grade
 from employees e join job_grades j
 on e.salary
 BETWEEN j.lowest_sal and j.highest_sal;