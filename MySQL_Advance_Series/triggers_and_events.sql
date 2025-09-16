-- Triggers and Events

DROP TRIGGER IF EXISTS employee_insert;
DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Chandler', 'Bing', 'CEO', 500000, NULL);

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics;