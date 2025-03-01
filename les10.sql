//1
create table dept(id number(7) constraint department_id_pk primary key , name varchar2(25));
//2
insert into dept
select department_id , department_name
from departments;
//4
create table employees2 as 
select employee_id id , first_name , last_name , salary , department_id dept_id
from employees;
//5
alter table employees2 read ONLY;
//8
DROP TABLE employees2;

select *
from employees2;

