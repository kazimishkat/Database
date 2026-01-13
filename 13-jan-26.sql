create table emp1122(
emp_id number,
emp_name varchar(30) not null,
emp_email varchar(30) not null,
emp_salary number(10,2),
emp_cell varchar(15),

CONSTRAINT hr_emp1122_emp_id_pk primary key (emp_id),
CONSTRAINT hr_emp1122_emp_email_uq UNIQUE (emp_email),
CONSTRAINT hr_emp1122_emp_cell_uq UNIQUE (emp_cell)
);

INSERT INTO emp1122(emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (1,'sadia','sadia@gmail.com',50000,'01775911526');

INSERT INTO emp1122(emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (2,'mishkat','mishkat@gmail.com',50000,'01921919104');

INSERT INTO emp1122(emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (3,'tanvir','tanvir@gmail.com',50000,'0624744767');

INSERT INTO emp1122(emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (4,'sajin','sajin@gmail.com',60000,'01754657687');

INSERT INTO emp1122(emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (5,'rehana','rehana@gmail.com',60000,'01754657686');

COMMIT;
select * from emp1122;