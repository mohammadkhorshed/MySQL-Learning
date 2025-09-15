-- Temporary Table

CREATE TEMPORARY TABLE temp_table
(
first_name VARCHAR(50),
last_name VARCHAR(50),
favorite_movie VARCHAR(100)
)
;

SELECT *
FROM temp_table
;

INSERT INTO temp_table
VALUES ('Mohammad Khorshed', 'Alam', 'Sawshank Redemption')
;

SELECT *
FROM temp_table
;

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50K
SELECT *
FROM employee_salary
WHERE salary > 50000
;

SELECT *
FROM salary_over_50k;