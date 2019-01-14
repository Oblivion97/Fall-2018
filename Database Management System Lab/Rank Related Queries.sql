-- show the higest salary value
SELECT MAX(SALARY) AS highest_sal
FROM employees

-- show the employee details having highest salary
SELECT * 
FROM employees
WHERE SALARY = (
		SELECT MAX(SALARY) AS highest_sal
		FROM employees
    )

/*	
  practice 1: show the lowest salary value
  practice 2: show the employee details gaving lowest salary
*/

-- show the employee having 2nd highest salary
SELECT e1.*
FROM employees e1 JOIN employees e2 ON e1.SALARY < e2.SALARY
GROUP BY e1.EMPLOYEE_ID
HAVING count(*)=1

/*
  practice 3: show employees having 3rd highest salary
  practice 4: show employees having 4th highest salary
  practice 5: show employees having 2nd lowest salary
*/

-- show department wise highest salary
SELECT DEPARTMENT_ID, MAX(SALARY) AS highest_sal
FROM employees
GROUP BY DEPARTMENT_ID

/*
  practice 6: show department wise lowest salary
*/

-- show the employees having department wise highest salary
SELECT e1.*
FROM employees e1 JOIN
	(
		SELECT DEPARTMENT_ID AS d_id, MAX(SALARY) AS highest_sal
		FROM employees
		GROUP BY DEPARTMENT_ID
	) AS dept_max 
	ON e1.DEPARTMENT_ID = dept_max.d_id
	
WHERE e1.SALARY = dept_max.highest_sal
ORDER BY e1.DEPARTMENT_ID

-- another way
SELECT e1.* 
FROM employees e1 
WHERE e1.salary = ( 
    SELECT MAX(e2.salary) 
    FROM employees e2 
    GROUP BY e2.department_id 
    HAVING e2.department_id = e1.department_id 
)
ORDER BY e1.DEPARTMENT_ID

/*
  practice 7: show employee details having department wise lowest salary
*/

-- show employee details having department wise 2nd highest salary
SELECT e1.*
FROM employees e1
WHERE e1.SALARY = ANY (
	SELECT e2.SALARY
    FROM employees e2 JOIN employees e3 ON e2.SALARY < e3.SALARY AND e2.DEPARTMENT_ID = e3.DEPARTMENT_ID
    WHERE e2.DEPARTMENT_ID = e1.DEPARTMENT_ID
    GROUP BY e2.EMPLOYEE_ID, e2.SALARY
    HAVING COUNT(*) = 1
)

/*
  practice 8: show employee details having department wise 2nd lowest salary
*/

-- show the manager details managing maximum no of employees
select man.employee_id,count(man.employee_id) as maxcnt 
from employees man 
group by man.manager_id 
having count(man.employee_id) = 
( 
    select max(man1.total) 
    from ( 		
        select count(*) as total 
        from employees e1 
        group by e1.manager_id 
    ) as man1 
)

/*
	practice 9: show the manager details managing minimum no of employees
	practice 10: show the department details having maximum no of employees
*/

-- show the manager managing 2nd highest total no of employees
select mantable.man_id, mantable.emp_cnt 
from 
( 
	select e.manager_id as man_id, count(e.employee_id) as emp_cnt
	from employees e 
	group by e.manager_id
) as mantable 
join 
( 
	select e.manager_id as man_id, count(e.employee_id) as emp_cnt
	from employees e 
	group by e.manager_id
) as mantable1 
on mantable.emp_cnt < mantable1.emp_cnt 
group by mantable.man_id 
having count(mantable1.man_id)=1;