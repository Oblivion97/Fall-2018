CREATE TABLE regions(
    region_id INT(10),
    region_name VARCHAR(25) NULL
); ALTER TABLE
    regions ADD CONSTRAINT pk_region PRIMARY KEY(region_id);
CREATE TABLE countries(
    country_id CHAR(2),
    country_name VARCHAR(255) NULL,
    region_id INT(10) NULL
); ALTER TABLE
    countries ADD CONSTRAINT pk_country PRIMARY KEY(country_id),
    ADD CONSTRAINT FK_country FOREIGN KEY(region_id) REFERENCES regions(region_id);
CREATE TABLE locations(
    location_id INT(10),
    street_address VARCHAR(255) NULL,
    postal_code VARCHAR(12),
    city VARCHAR(30) NULL,
    state_providence VARCHAR(12) NULL,
    country_id VARCHAR(2) NULL
); ALTER TABLE
    locations ADD CONSTRAINT pk1_location PRIMARY KEY(location_id),
ADD CONSTRAINT FK1_location FOREIGN KEY(country_id) REFERENCES countries(country_id);


CREATE TABLE departments(
    department_id INT(10),
    department_name VARCHAR(30),
    location_id INT(12) NULL,
    manager_id INT(10)
); ALTER TABLE
    departments ADD CONSTRAINT pk2_department PRIMARY KEY(department_id),
    ADD CONSTRAINT FK2_department FOREIGN KEY(location_id) REFERENCES locations(location_id);
CREATE TABLE employees(
    employee_id INT(10),
    first_name VARCHAR(20) NULL,
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20) NULL,
    hire_date DATE,
    salary INT(10) NULL,
    comminssion_pct INT(10) NULL,
    job_id VARCHAR(10),
    department_id INT(10),
    manager_id INT(10) NULL
);ALTER TABLE
    employees ADD CONSTRAINT pk3_employee PRIMARY KEY(employee_id);
ALTER TABLE
    employees ADD CONSTRAINT FK3_employee FOREIGN KEY(manager_id) REFERENCES employees(employee_id);
ALTER TABLE
    departments ADD CONSTRAINT FK33_employee FOREIGN KEY(manager_id) REFERENCES employees(employee_id);
CREATE TABLE jobs(
    job_id VARCHAR(10),
    job_title VARCHAR(35),
    min_salary INT(10),
    max_salary INT(10)
); ALTER TABLE
    jobs ADD CONSTRAINT pk7_jobid PRIMARY KEY(job_id);
ALTER TABLE
    employees ADD CONSTRAINT FK6_jobid FOREIGN KEY(job_id) REFERENCES jobs(job_id);
CREATE TABLE job_history(
    start_date DATE,
    Employee_id INT(10),
    end_date DATE NULL,
    Department_id INT(10) NULL,
    Job_id VARCHAR(10)
); ALTER TABLE
    job_history ADD CONSTRAINT pk9_jobhistory PRIMARY KEY(start_date);
ALTER TABLE
    job_history ADD CONSTRAINT FK10_jobhistory FOREIGN KEY(job_id) REFERENCES jobs(job_id);
ALTER TABLE
    job_history ADD CONSTRAINT FK11_jobhistory FOREIGN KEY(department_id) REFERENCES departments(department_id);
ALTER TABLE
    job_history ADD CONSTRAINT FK12_jobhistory FOREIGN KEY(employee_id) REFERENCES employees(employee_id);