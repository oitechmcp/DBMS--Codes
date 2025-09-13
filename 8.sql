-- Implement Locks for a Particular Table
LOCK TABLE employees IN EXCLUSIVE MODE;
UPDATE employees SET salary = 60000 WHERE id = 1;
UNLOCK TABLES;
