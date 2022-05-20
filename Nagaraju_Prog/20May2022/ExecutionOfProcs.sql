DECLARE
    v_res   VARCHAR2 (200);
BEGIN
    EMP_INSERT2 (p_empno   => 7444,
                 p_ename   => 'VENU',
                 p_job     => 'CLERK',
                 p_sal     => 6000,
                 res       => v_res);
                 dbms_output.put_line('Result is :'||v_res);

END;

SELECT * FROM EMP_TEST1;

SELECT COUNT(*) FROM EMP_TEST1
    WHERE EMPNO=800;

DECLARE
    v_res   VARCHAR2 (200);
BEGIN
    EMP_UPDATE2 (p_empno   => 7444, 
                 p_sal     => 400,
                 res       => v_res);
                 dbms_output.put_line('Result is :'||v_res);

END;


DECLARE
    v_res   VARCHAR2 (200);
BEGIN
    EMP_DELETE2 (p_empno   => 8009,  
                 res       => v_res);
                 dbms_output.put_line('Result is :'||v_res);

END;