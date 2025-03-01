//1
CREATE TABLE my_employee (first_name CHAR(20), last_name char(20), userid char(20) , salary INTEGER, 
PRIMARY KEY (userid));
//3
INSERT INTO my_employee(last_name , first_name , userid , salary)
values ('sh' , 'omar' , 'ooo' , 8000);
//6 , 7 ,16
INSERT into my_employee(first_name , last_name , userid , salary)
values ('&firs_name' , '&last_name' , '&userid' , &salary);
//10
update my_employee
set userid = 'oao'
where userid = 'omo';
//13
delete
from my_employee
where userid = 'mom';
//22
select * 
FROM my_employee;

