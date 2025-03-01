//2
select employee_id , last_name , salary ,round (salary+(salary*(15.5/100))) "NewSalary"
from employees;
//5
select initcap(last_name) "Name" , length(last_name)
from employees
where last_name like 'A%' or last_name like 'J%' or last_name like 'M%';
//5.2
select last_name "Name" , length(last_name)
from employees
where last_name like '&enter_letter%';
//6 error
select last_name , months_between(sysdate , hare_date) as months_worked
from employees
order by months_worked;
//7
select last_name , lpad(salary , 15 , '$')
from employees;
//8
select rpad(rpad(last_name , 8) , 8 + (salary/1000) , '*') as employees_and_their_salaries
from employees;
//9
select last_name , trunc()


