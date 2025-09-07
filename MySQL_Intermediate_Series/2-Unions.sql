-- Unions

-- Wrong Union
SELECT 
    age, gender
FROM
    employee_demographics
UNION
SELECT
	first_name, last_name
FROM
	 employee_salary
;

-- Correct Union (Distinct)

SELECT 
    first_name, last_name
FROM
    employee_demographics
UNION
SELECT
	first_name, last_name
FROM
	 employee_salary
;

-- Union All

SELECT 
    first_name, last_name
FROM
    employee_demographics
UNION ALL
SELECT
	first_name, last_name
FROM
	 employee_salary
;

-- Usecase

SELECT first_name, last_name, 'Old Man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Female' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;