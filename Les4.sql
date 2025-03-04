SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-YYYY')
FROM  employees
WHERE hire_date < TO_DATE('01-Jan-90','DD-Mon-RR');

SELECT last_name,
  UPPER(CONCAT(SUBSTR (LAST_NAME, 1, 8), '_US'))
FROM   employees
WHERE  department_id = 60;

SELECT last_name, salary, NVL(commission_pct, 0),
   (salary*12) + (salary*12*NVL(commission_pct,0 )) AN_SAL
FROM employees;

SELECT last_name,  salary, commission_pct,
       NVL2(commission_pct, 
            'SAL+COMM', 'SAL') income
FROM   employees WHERE department_id IN (50, 80);

SELECT first_name, LENGTH(first_name) "expr1", 
       last_name,  LENGTH(last_name)  "expr2",
       NULLIF(LENGTH(first_name), LENGTH(last_name)) result
FROM   employees;

SELECT last_name, commission_pct, manager_id,
COALESCE(TO_CHAR(commission_pct),TO_CHAR(manager_id),
	'No commission and no manager') 
FROM employees;     

SELECT last_name, job_id, salary,
       CASE job_id WHEN 'IT_PROG'  THEN  'ggg'
                   WHEN 'ST_CLERK' THEN  'gdg'
                   WHEN 'SA_REP'   THEN  'ddd'
       ELSE      '000' 
       END     "REVISED_SALARY"
FROM   employees;

SELECT last_name, job_id, salary,
       DECODE(job_id, 'IT_PROG',  1.10*salary,
                      'ST_CLERK', 1.15*salary,
                      'SA_REP',   1.20*salary,
              salary)
       REVISED_SALARY
FROM   employees;





