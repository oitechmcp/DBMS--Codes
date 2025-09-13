-- PL/SQL Procedure with Functions
CREATE OR REPLACE FUNCTION get_total_salary RETURN NUMBER IS
    total NUMBER;
BEGIN
    SELECT SUM(salary) INTO total FROM employees;
    RETURN total;
END;
/
CREATE OR REPLACE PROCEDURE display_total_salary AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total Salary: ' || get_total_salary);
END;
/
