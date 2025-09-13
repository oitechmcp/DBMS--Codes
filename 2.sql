-- DDL Commands
CREATE TABLE employees (id INT PRIMARY KEY, name VARCHAR(50), salary DECIMAL(10,2));
ALTER TABLE employees ADD COLUMN dept VARCHAR(50);
DROP TABLE employees;
