/*1.*/
SELECT
    e.first_name,
    m.first_name,
    MIN(e.SALARY)
FROM
    employees e
JOIN employees m ON
    e.MANAGER_ID = m.employee_id

/*	2.*/
SELECT
    e.department_id,
    d.department_name,
    AVG(e.salary),
    COUNT(*)
FROM
    employees e
JOIN departments d ON
    e.department_id = d.department_id
GROUP BY
    e.department_id
HAVING
    COUNT(*) > 10;

/*3.*/	
SELECT
    e1.last_name,
    COUNT(*)
FROM
    employees e1
JOIN employees e2 ON
    e1.HIRE_DATE > e2.HIRE_DATE
GROUP BY
    e1.EMPLOYEE_ID
	
/*4.*/
SELECT
    MIN(SALARY),
    MAX(SALARY),
    SUM(SALARY),
    COUNT(*)
FROM
    employees
WHERE
    DEPARTMENT_ID = 80