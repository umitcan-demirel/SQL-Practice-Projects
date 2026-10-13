-- Unions

SELECT age,gender
FROM employee_demographics
UNION
SELECT first_name,last_name
FROM employee_salary
;

SELECT first_name,last_name
FROM employee_demographics
UNION
SELECT first_name,last_name
FROM employee_salary
;

-- DISTINCT VS ALL UNIONS

SELECT first_name,last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name,last_name
FROM employee_salary
;

SELECT first_name,last_name
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary
;

-- Two Table Unions

SELECT first_name,last_name, 'Old' AS Label
FROM employee_demographics
WHERE age>40
UNION
SELECT first_name,last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary>70000
;

-- Multiple Table Unions
SELECT first_name,last_name, 'Old Men' AS Label
FROM employee_demographics
WHERE age>40 AND gender ='Male'
UNION
SELECT first_name,last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age>40 AND gender ='FeMale'
UNION
SELECT first_name,last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary>70000
ORDER BY first_name,last_name
;
