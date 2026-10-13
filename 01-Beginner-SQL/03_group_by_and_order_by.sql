-- Group By

SELECT*
FROM employee_demographics;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation,salary
;

-- ORDER By
SELECT*
FROM employee_demographics
ORDER BY gender
;
SELECT*
FROM employee_demographics
ORDER by first_name ASC;

SELECT*
FROM employee_demographics
ORDER by first_name DESC;

SELECT*
FROM employee_demographics
ORDER BY gender,age
;

SELECT*
FROM employee_demographics
ORDER BY age,gender
;

SELECT*
FROM employee_demographics
ORDER BY gender,age DESC
;
