//1
select distinct last_name , job_id , salary as sal
from employees;
//2
select *
from job_history;

DESC departments
select department_id , department_name , manager_id , location_id 
from departments;
//5
select phone_number , last_name , job_id , hire_date
from employees;
//6
select employee_id , last_name , job_id , hire_date as startdate
from employees;
//7
select DISTINCT job_id
from employees;
//8
select employee_id "Emp#", last_name "Employee", job_id "Job", hire_date "Hire Date"
from employees;
//9
select last_name || ', ' || job_id "Employee and Title"
from employees;
