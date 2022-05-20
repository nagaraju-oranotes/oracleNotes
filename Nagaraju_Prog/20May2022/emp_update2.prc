DROP PROCEDURE SCOTT.EMP_UPDATE2;

CREATE OR REPLACE PROCEDURE SCOTT.EMP_UPDATE2 (p_empno   IN     NUMBER, 
                                         p_sal     IN     NUMBER,
                                         res          OUT VARCHAR2) 
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM EMP_TEST1
    WHERE EMPNO=p_empno;
    
    IF v_count>=1 THEN
        UPDATE EMP_TEST1
        SET SAL=p_sal
        WHERE EMPNO=p_empno;
        COMMIT;
        RES := 'Successfully Updated';
    ELSE
        RES := 'Record does not found. Update is failed';  
    END IF;
    
END;
/
