-- Case Statements

SELECT
	first_name,
	last_name,
    age,
	CASE
		WHEN age <= 29 THEN 'Young'
        WHEN age BETWEEN 30 and 49 THEN 'Adult'
        WHEN age >= 50 THEN 'Senior'
	END AS age_group
FROM
	employee_demographics
;

-- Example (Pay Increase and Bonus)
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance Dept = 10% bonus

SELECT
	first_name,
    last_name,
    salary,
    department_name,
    CASE
		WHEN salary < 50000 THEN salary + (salary * 0.05)
        WHEN salary >= 50000 THEN salary + (salary * 0.07)
	END AS incremented_salary,
    CASE
		WHEN department_name = 'Finance' THEN salary * 0.1
	END as bonus
FROM
	employee_salary
LEFT JOIN
	parks_departments
    ON
		employee_salary.dept_id = parks_departments.department_id
;