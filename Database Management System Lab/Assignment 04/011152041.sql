/*
1.Find out those employees who don't work in 'IT_PROG' job type and
also receive lower salary than any other employees in 'IT_PROG' job type.
*/
SELECT
    *
FROM
    employees
WHERE
    salary < ANY(
    SELECT
        employee_id
    FROM
        employees e1
    WHERE
        job_id =('IT_PROG') && job_id != 'IT_PROG'
)
/*2.For each job type, find the employee who gets the highest salary. Print job title
and last name of the employee. Assume that there is one and only one such employee
for every job type.
*/
SELECT
    LAST_name
FROM
    (
    SELECT
        MAX(e1.salary) AS highest
    FROM
        employees e1
)
/*3.Show each employees Last_name, his salary, his department’s minimum
salary and maximum salary*/
SELECT
    LAST_name,
    salary,
    department_id
FROM
    employees d1
WHERE
    (
    SELECT
        MAX(salary) AS MAX AND MIN(salary) AS MIN
    FROM
        employees
    WHERE
        department_id = d1.department_id
)
/*4.Find those department names which have the highest number of employees
 in service. Print department names. Use sub‐query. You can use join within the
 sub‐queries.*/
SELECT NAME
FROM
    department_name
WHERE
    id IN(
    SELECT
        department_id
    FROM
        employees
    HAVING
        COUNT(department_id) IN(
        SELECT
            MAX(COUNT(department_id))
        FROM
            employees
    )
GROUP BY
    department_id
)
/*5.Write a query in SQL to display the full name (first and last name) of manager
 who is supervising 4 or more employees.*/
SELECT
    *
FROM
    (
    SELECT
        COUNT(*) AS total
    FROM
        employees e1
    GROUP BY
        e1.Manager_id
) AS manage
HAVING
    COUNT(*) >= 4
