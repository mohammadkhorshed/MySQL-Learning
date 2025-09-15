-- CTE

WITH demo_cte AS
(SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics
JOIN employee_salary
GROUP BY gender
)
SELECT *
FROM demo_cte
;


WITH demo_cte(Gender, Avg_salary, Max_salary, Min_salary, Count_salary) AS
(SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics
JOIN employee_salary
GROUP BY gender
)
SELECT *
FROM demo_cte
;



WITH demo_cte AS
(SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics
JOIN employee_salary
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM demo_cte
;


WITH demo_cte AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
),
demo_cte2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM demo_cte
JOIN demo_cte2
	ON demo_cte.employee_id = demo_cte2.employee_id
;