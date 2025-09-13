-- PL/SQL Procedure with Package
CREATE OR REPLACE PACKAGE emp_pkg AS
    PROCEDURE raise_salary(emp_id IN NUMBER, percentage IN NUMBER);
END emp_pkg;
/
CREATE OR REPLACE PACKAGE BODY emp_pkg AS
    PROCEDURE raise_salary(emp_id IN NUMBER, percentage IN NUMBER) IS
    BEGIN
        UPDATE employees SET salary = salary * (1 + percentage/100) WHERE id = emp_id;
        COMMIT;
    END raise_salary;
END emp_pkg;
/
BEGIN
    emp_pkg.raise_salary(1, 10);
END;
/
