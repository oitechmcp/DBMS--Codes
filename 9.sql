-- PL/SQL Procedure with Exception Handling
CREATE OR REPLACE PROCEDURE update_salary(emp_id IN NUMBER, new_sal IN NUMBER) AS
BEGIN
    UPDATE employees SET salary = new_sal WHERE id = emp_id;
    IF SQL%NOTFOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'Employee not found');
    END IF;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20002, 'Error: ' || SQLERRM);
END;
/
