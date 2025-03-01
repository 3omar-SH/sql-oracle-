//4
select round(max(salary)) as maximum , round(min(salary)) minimum , round(sum(salary)) sum , round(avg(salary)) average
from employees;
//5
select job_id as job_id , round(max(salary)) as maximum , round(min(salary)) minimum , round(sum(salary)) sum , round(avg(salary)) average
from employees
group by job_id;
//6
select job_id , count(*)
from employees
where job_id = '& job_title'
group by job_id;
//7
select count(distinct manager_id) "Number of Managers"
from employees;
//8
select max(salary) - min(salary) as difference
from employees;
//9
select manager_id , min(salary)
from employees
where manager_id is not null
group by manager_id
HAVING min(salary) > 6000
order by min(salary) DESC;

