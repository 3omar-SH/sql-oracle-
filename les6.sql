//2
select last_name , department_id , department_name
from employees
join departments
USING (department_id);
//3
select e.last_name , e.job_id , e.department_id , d.department_name
from employees e join departments d
on (e.department_id = d.department_id)
JOIN locations l 
on (d.location_id = l.location_id)
WHERE lower(l.city) = 'toronto';
//5
select w.last_name "Employee" , w.employee_id "EMP#" , 
       m.last_name "Manager" , m.employee_id "Mgr#"
from employees w
left OUTER join employees m
on (w.manager_id = m.employee_id)
order by 2;
//8
select e.last_name , e.hire_date
from employees e join employees davies
on (davies.last_name = 'Davies')
where davies.hire_date < e.hire_date;
 