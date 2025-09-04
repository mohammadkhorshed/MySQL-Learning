SELECT *
FROM employee_demographics
WHERE `gender` = 'Male' AND `age` >= 40;

SELECT first_name, last_name, birth_date
FROM employee_demographics
WHERE `gender` = 'Female';

SELECT
	first_name,
    last_name,
	birth_date,
    age,
    age + 10
FROM employee_demographics
WHERE `gender` = 'Female';


SELECT DISTINCT gender
FROM employee_demographics;

SELECT DISTINCT gender, first_name
FROM employee_demographics;

