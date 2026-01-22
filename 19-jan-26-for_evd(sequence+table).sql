create table seq(
seq_id number,
seq_name VARCHAR2(30),
seq_email varchar (50),
seq_date date ,

constraint hr_seq_seq_id_pk primary key (seq_id),
constraint hr_seq_seq_email_uq unique (seq_email)
);
alter table seq
add constraint hr_seq_seq_date_uq unique (seq_date);

alter table seq
add (seq_cell varchar(30));

alter table seq
modify seq_name not null;

create sequence seq_seq_id_sq
start with 1
increment by 1
maxvalue 99999999;

insert into seq(seq_id,seq_name,seq_email,seq_date)
values (seq_seq_id_sq.nextval,'tanvir','tanvir@gmail.com',sysdate-1550);

insert into seq(seq_id,seq_name,seq_email,seq_date)
values (seq_seq_id_sq.nextval,'sadia','sadia@gmail.com',sysdate-1550);

insert into seq(seq_id,seq_name,seq_email,seq_date)
values (seq_seq_id_sq.nextval,'masud','masud@gmail.com',sysdate-1550);

insert into seq(seq_id,seq_name,seq_email,seq_date)
values (seq_seq_id_sq.nextval,'mishkat','mishkat@gmail.com',sysdate-1550);

select * from seq;
desc seq;

commit;
