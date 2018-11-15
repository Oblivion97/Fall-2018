1.
SELECT
    e.LAST_NAME,
    COUNT(*)
FROM
    employees e
JOIN employees e1 ON
    e.SALARY > e1.SALARY
HAVING
    COUNT >= 3;

2.
SELECT
    e1.last_name,
    COUNT(*)
FROM
    employees e1
JOIN employees e2 ON
    e1.HIRE_DATE > e2.HIRE_DATE|e1.HIRE_DATE < e2.HIRE_DATE
GROUP BY
    e1.EMPLOYEE_ID