1. select hired_after.af_id, hired_after.AFTER, hired_before.BEFORE
from (select e1.employee_id as af_id, count(*) as "AFTER"
from employees e1 join employees e2 on e1.HIRE_DATE < e2.HIRE_DATE
group by e1.EMPLOYEE_ID) AS hired_after

join

(select e3.employee_id as bf_id, count(*) as "BEFORE"
from employees e3 join employees e4 on e3.HIRE_DATE > e4.HIRE_DATE
group by e3.EMPLOYEE_ID) AS hired_before

on  hired_after.af_id = hired_before.bf_id

2. select max(total)
from (select manager_id, count(*) as total
from employees 
group by MANAGER_ID) as sub_table

3. do it yourself

4. SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE JOB_ID =
(
SELECT JOB_ID
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 141
) ;

5. SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY =
(
SELECT MAX(SALARY)
FROM EMPLOYEES
) ;

6. select man.*
from employees as man join employees as emp on man.EMPLOYEE_ID=emp.MANAGER_ID
group by man.EMPLOYEE_ID
HAVING count(*) = (
select max(total)
from(
select MANAGER_ID, count(*) as total
from employees
group by MANAGER_ID) as sub_table)

7. SELECT LAST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE JOB_ID <> 'IT_PROG'
AND SALARY < ANY
(
SELECT SALARY
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG'
) ;

8. select * from employees
where (job_id, SALARY)=(select job_id, SALARY from employees where EMPLOYEE_ID = 144)

9. select department_name
from departments as d
where 0 < (select count(*) from employees as e where e.DEPARTMENT_ID=d.DEPARTMENT_ID and e.JOB_ID='IT_PROG')

10. select *
from employees as e
where 0 = (select count(*) from employees e1 where e1.SALARY > e.SALARY and e.DEPARTMENT_ID=e1.DEPARTMENT_ID)

