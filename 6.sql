-- Join Operations in SQL
SELECT e.name, d.dept_name 
FROM employees e 
JOIN departments d ON e.dept = d.dept_id;
