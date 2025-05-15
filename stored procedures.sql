-- STORED PROCEDURES
-- tambien como crear una nueva función en python

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER $$

CALL large_salaries3();

-- los delimiters separan los queries uno de otro en caso de que quieras agregar varios

-- PARAMETERS
-- variables that are passed as an input into a stored procedure and allow the stored procedure to accept an input value and place it into your code 

DELIMITER $$
CREATE PROCEDURE large_salaries4(huggymuffin INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = huggymuffin
    ;
END $$
DELIMITER ;

CALL large_salaries4(1)




