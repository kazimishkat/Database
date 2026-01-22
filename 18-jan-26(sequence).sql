create SEQUENCE stu_sq_stu_id
start with 100
increment by 1
maxvalue 999999;

select * from students

select stu_sq_stu_id.nextval
from dual;

insert into students (stu_id,stu_name,stu_email)
values (stu_sq_stu_id.nextval,'emon','emon@gmail.com');

insert into students (stu_id,stu_name,stu_email)
values (stu_sq_stu_id.nextval,'mahabub','mahabbu@gmail.com');

alter table students read write;

select * from emp1122;

create SEQUENCE emp1122_sq_emp_id
start with 6 
increment by 1
maxvalue 99999;

insert into emp1122(emp_id,emp_name,emp_email)
values (emp1122_sq_emp_id.nextval,'hasan','hasan@gmail.com');

select emp1122_sq_emp_id.nextval
from dual;
insert into emp1122(emp_id,emp_name,emp_email)
values (emp1122_sq_emp_id.currval,'pk','pk@gmail.com');
commit;