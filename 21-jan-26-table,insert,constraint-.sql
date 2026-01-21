create table students (
stu_id number not null,
stu_email varchar2(50) not null,
stu_dob date,
cell_no varchar2(11),

constraint demo_students_stu_id_pk PRIMARY KEY (stu_id));

INSERT into students (stu_id,stu_email,stu_dob,cell_no)
values (1,'mishkat@gmail.com',sysdate - 150,01111111);

INSERT into students (stu_id,stu_email,stu_dob,cell_no)
values (2,'tanvir@gmail.com',sysdate - 150,01111111);

INSERT into students (stu_id,stu_email,stu_dob,cell_no)
values (3,'sadia@gmail.com',sysdate - 150,01111111);

create table emp(
emp_id NUMBER,
emp_name VARCHAR2(50) DEFAULT 'JEE',
emp_salary number default 1000,
emp_email VARCHAR(50),
emp_Dob date default sysdate-360,

constraint demo_emp_emp_email_uq UNIQUE (emp_email));

INSERT into emp (emp_id,emp_name,emp_salary,emp_email,emp_dob)
values (1,null,null,'mishaktul@gmail.com',null);
INSERT into emp (emp_id,emp_email)
values (2,'m@gmail.com');

select * from emp;

COMMIT;