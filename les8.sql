//2
select country_id , country_name
from countries
minus
select l.country_id , c.country_name
from locations l join countries c
on (l.country_id = c.country_id)
join departments d
on d.location_id = l.location_id;
//3
select DISTINCT job_id , department_id
from employees
where department_id = 10
UNION all
SELECT DISTINCT job_id , department_id
from employees
where department_id = 50
UNION all
SELECT DISTINCT job_id , department_id
from employees
where department_id = 20;
//5
select last_name , department_id , to_char(null)
FROM employees
union
SELECT to_char(null) , department_id , department_name
from departments;