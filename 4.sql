-- DCL and TCL Commands
GRANT SELECT ON employees TO user1;
REVOKE SELECT ON employees FROM user1;
BEGIN TRANSACTION;
UPDATE employees SET salary = 55000 WHERE id = 2;
COMMIT;
ROLLBACK;
