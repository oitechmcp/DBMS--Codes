-- Create Views for a Particular Table
CREATE VIEW emp_view AS SELECT id, name, salary FROM employees WHERE salary > 50000;
