DROP PROCEDURE SCOTT.EMP_DELETE2;

CREATE OR REPLACE PROCEDURE SCOTT.EMP_DELETE2 (p_empno   IN     NUMBER,
                                         res          OUT VARCHAR2) 
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM EMP_TEST1
    WHERE EMPNO=p_empno;
    
    IF v_count>=1 THEN
        DELETE FROM EMP_TEST1 
        WHERE EMPNO=p_empno;
        COMMIT;
        RES := 'Successfully Deleted';
    ELSE
        RES := 'Record does not found. Delete is failed';  
    END IF;
    
END;
/
