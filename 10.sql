-- PL/SQL Procedure with Cursors
CREATE OR REPLACE PROCEDURE list_employees AS
    CURSOR emp_cursor IS SELECT name, salary FROM employees;
    v_name employees.name%TYPE;
    v_salary employees.salary%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name || ': ' || v_salary);
    END LOOP;
    CLOSE emp_cursor;
END;
/
