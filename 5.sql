-- Nested Queries
SELECT name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
