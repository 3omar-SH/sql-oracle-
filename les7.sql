//1
select last_name , hire_date
from employees
where department_id = (select department_id 
                        from employees 
                        where last_name = '&&Enter_name')
and last_name <> '&Enter_name';
//3
select department_id , last_name
from employees
where department_id in (select department_id
                        from employees
                        where last_name like '%u%');
//5
select last_name , salary
from employees
where manager_id = (select employee_id
                        from employees
                        where last_name = 'king');
//7
select employee_id , last_name , salary
from employees
where  salary > (select avg(salary) from employees)
and department_id in (select department_id
                        from employees
                        where last_name like '%u%');
