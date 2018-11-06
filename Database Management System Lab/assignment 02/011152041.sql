/* #practice set 2.1 [d] */
SELECT DISTINCT
    city
FROM
    locations

/* #practice set 2.2 [g] */
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    job_id = 'AD_PRES' AND salary >= 23000

/* #practice set 2.3 [a] */
SELECT
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS NAME,
    salary,
    commission_pct
FROM
    employees
WHERE
    job_id = 'AD_PRES'
ORDER BY
    commission_pct ASC,
    salary
DESC

/* #practice set 3.1 [c] */
SELECT
    JOB_TITLE
FROM
    jobs
WHERE
    job_title LIKE('%manager%')

/* #practice set 3.3 [b] */
SELECT
  FIRST_NAME,
  EMPLOYEE_ID, DATEDIFF(LAST_DAY(HIRE_DATE), HIRE_DATE) +1 AS "WORKING_DAYS"
FROM
  employees

/* #practice set 3.5 [a(ii)] */
SELECT
  FIRST_NAME,
  DATE_FORMAT(HIRE_DATE,
  "%d %M, %Y") AS "join_date"
FROM
  employees