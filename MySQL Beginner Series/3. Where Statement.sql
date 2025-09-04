SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE gender != 'Female';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' AND gender = 'Male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' OR NOT gender = 'Male';

SELECT *
FROM employee_demographics
WHERE (birth_date > '1985-01-01' AND gender != 'Male') OR age > 55;

-- Like Statement
-- % (anything) and _

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989-%';
