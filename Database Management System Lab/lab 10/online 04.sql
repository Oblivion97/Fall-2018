/*3.*/
SELECT
    MAX(maximum),
    id
FROM
    (
    SELECT
        COUNT(*) AS maximum,
        manager_id AS id
    FROM
        employees
    GROUP BY
        manager_id
) AS max_manage

/*1.*/
SELECT
    MAX(loc),
    c_id
FROM
    (
    SELECT
        COUNT(*) AS loc,
        COUNTRY_ID AS c_id
    FROM
        locations
    GROUP BY
        COUNTRY_ID
) AS location