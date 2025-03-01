//1
select last_name , salary
from employees
where salary > 12000;
//2
select last_name , department_id
from employees
where employee_id = 176;
//3
select last_name , salary
from employees
where salary not BETWEEN 5000 and 12000;
//5
select last_name , department_id
from employees
where department_id = 20 or department_id = 50
ORDER BY last_name;
//6
select last_name "employee" , salary "Monthy Salary"
from employees
where salary BETWEEN 5000 AND 12000
and (department_id in(20 , 50));
//8
select last_name , job_id
from employees
where job_id = 'AD_PRES';
//10
select last_name , salary
from employees
where salary > &amount;
//11
select employee_id , last_name , salary , department_id
from employees
where manager_id = &id
order by &sortColumn;
//12
select last_name
from employees
WHERE last_name like '__a%';
//13
select last_name
from employees
where last_name like '%a%'
and last_name like '%e%';
//14
select last_name , job_id , salary
from employees
where salary not in(2500 , 3500 , 7000);