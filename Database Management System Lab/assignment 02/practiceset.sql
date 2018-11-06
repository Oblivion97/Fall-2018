#phase 1

#practice set 2.1 [a]
SELECT
    country_name
FROM
    countries
    
#practice set 2.1 [b]
SELECT
    job_title
FROM
    jobs

#practice set 2.1 [c]
SELECT DISTINCT
    manager_id
FROM
    departments

#practice set 2.1 [d]
SELECT DISTINCT
    city
FROM
    locations

#practice set 2.1 [e]
SELECT
    CONCAT(
        location_id,
        ',',
        STREET_ADDRESS,
        ',',
        CITY,
        ',',
        STATE_PROVINCE,
        ',',
        POSTAL_CODE
    ) AS ADDRESS
FROM
    locations

#phase 2

#practice set 2.2 [a]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    STR_TO_DATE("January 01,1998", "% M % d, % Y") >= HIRE_DATE
    
#practice set 2.2 [b]
SELECT
    *
FROM
    locations
WHERE
    country_id IN('CA', 'DE')
    
#practice set 2.2 [c]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    commission_pct = 0
    
#practice set 2.2 [d]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    last_name LIKE('a%')
    
#practice set 2.2 [e]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    last_name LIKE('s%n')
    
#practice set 2.2 [f]
SELECT
    department_name
FROM
    departments
WHERE
    MANAGER_ID = 100
    
#practice set 2.2 [g]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    job_id = 'AD_PRESS' AND salary >= 23000
    
#practice set 2.2 [h]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    last_name NOT LIKE '%s%'
    
#practice set 2.2 [i]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME,COMMISSION_PCT
FROM
    employees
WHERE
    COMMISSION_PCT <= 0.30
    
#practice set 2.2 [j]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    STR_TO_DATE("January 01,1998", "% M % d, % Y") <= HIRE_DATE
    
#practice set 2.2 [k]
SELECT
    CONCAT(FIRST_NAME, ',', LAST_NAME) AS NAME
FROM
    employees
WHERE
    YEAR(1998)
    
#phase 3

#practice set 2.3 [a]
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
    
#practice set 2.3 [b]


#phase 4

#practice set 3.1 [a]
SELECT
    CONCAT(
        UPPER(SUBSTRING(COUNTRY_NAME, 1, 3)),
        ',',
        UPPER(SUBSTRING(COUNTRY_NAME, -3))
    ) AS COUNTRY
FROM
    countries

#practice set 3.1 [b]
SELECT
  LPAD(
    CONCAT(FIRST_NAME,
    ' ' ,LAST_NAME),
    60,
    '*'
  ) AS "FULL NAME"
FROM
  employees
  
#practice set 3.1 [c]
SELECT
    JOB_TITLE
FROM
    jobs
WHERE
    job_title LIKE('%manager%')


#phase 5

#practice set 3.2 [a]
SELECT
    LAST_NAME,
    ROUND(
        (
            DATEDIFF(CURRENT_DATE, HIRE_DATE)+1
        ),
        2,
        1
    ) AS "working_days"
FROM
    employees
    
#practice set 3.2 [b]
SELECT
  FIRST_NAME,
  LAST_NAME EMPLOYEE_ID,
  ROUND(
    (
      DATEDIFF(CURRENT_DATE,
      HIRE_DATE) +1
    ) / 365,
    3
  ) AS "WORKING_YEARS"
FROM
  employees

#phase 6

#practice set 3.3 [a]
SELECT
    FIRST_NAME,
    LAST_NAME,
    (
        DATEDIFF(CURRENT_DATE, HIRE_DATE) +1
    ) / 365 AS "WORKING_YEARS"
FROM
    employees

#practice set 3.3 [b]
SELECT
  FIRST_NAME,
  EMPLOYEE_ID, DATEDIFF(LAST_DAY(HIRE_DATE), HIRE_DATE) +1 AS "WORKING_DAYS"
FROM
  employees

#phase 7

#practice set 3.4 [a]

#practice set 3.4 [b]


#phase 8

#practice set 3.5 [a(i)]
SELECT
  FIRST_NAME,
  DATE_FORMAT(HIRE_DATE,
  "%D %M, %Y") AS "join_date"
FROM
  employees

#practice set 3.5 [a(ii)]
SELECT
  FIRST_NAME,
  DATE_FORMAT(HIRE_DATE,
  "%d %M, %Y") AS "join_date"
FROM
  employees
  