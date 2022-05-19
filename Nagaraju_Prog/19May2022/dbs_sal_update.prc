DROP PROCEDURE SCOTT.DBS_SAL_UPDATE;

CREATE OR REPLACE PROCEDURE SCOTT.DBS_SAL_UPDATE(p_empno NUMBER) IS
  v_sal NUMBER;
  v_inc NUMBER;
BEGIN
  SELECT SAL INTO v_sal FROM EMP WHERE EMPNO=p_empno;

  IF v_sal >= 10000 THEN
     v_inc:=v_sal*2/100;
  ELSIF v_sal>=5000 THEN
     v_inc:=v_sal*4/100;
  ELSIF v_sal>=3000 THEN
     v_inc:=v_sal*6/100;
  ELSE
     v_inc:=v_sal*8/100;
  END IF;

  UPDATE EMP
  SET SAL=SAL+v_inc
  WHERE EMPNO=p_empno;
  commit;
END;
/
