-- String Functions

-- Length

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

-- Upper

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

-- Lower

SELECT first_name, LOWER(first_name)
FROM employee_demographics
;

-- Trim

SELECT TRIM('      Hello     ');

-- Left Trim
SELECT LTRIM('      Hello      ');

-- Right Trim
SELECT RTRIM('       Hello     ');

-- Substring

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics
;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 3)
FROM employee_demographics
;

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 3), 
SUBSTRING(first_name, 3, 2)
FROM employee_demographics
;

SELECT birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics
;

-- Replace

SELECT first_name, REPLACE(first_name, 'e', 'z')
FROM employee_demographics
;

-- Locate

SELECT first_name, LOCATE('nn', first_name)
FROM employee_demographics
;


-- Concatenation

SELECT first_name, last_name, CONCAT(first_name, ' ', last_name)
FROM employee_demographics
;