DROP PROCEDURE SCOTT.EMP_INSERT2;

CREATE OR REPLACE PROCEDURE SCOTT.EMP_INSERT2 (p_empno   IN     NUMBER,
                                         p_ename   IN     VARCHAR2,
                                         p_job     IN     VARCHAR2,
                                         p_sal     IN     NUMBER,
                                         res          OUT VARCHAR2) 
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM EMP_TEST1
    WHERE EMPNO=p_empno;
    
    IF v_count>0 THEN
        RES := 'Record exists. Insert is failed';
    ELSIF p_job IS NULL THEN
        RES := ' Job is mandatory. Insert is failed';
    ELSIF p_sal<5000 THEN
        RES := p_sal||' Invalid Salary. Valid data is morethan 5000';
    ELSE
        INSERT INTO EMP_TEST1 (EMPNO,
                               ENAME,
                               JOB,
                               SAL)
             VALUES (p_empno,
                     p_ename,
                     p_job,
                     p_sal);

        COMMIT;
        RES := 'Successfully Inserted';
    END IF;
    
END;
/
