CREATE OR REPLACE FUNCTION TOT_SAL(p_sal IN NUMBER, p_comm IN NUMBER) RETURN NUMBER IS
  v_comm NUMBER;
  v_tot_sal NUMBER;
BEGIN 
  --v_tot_sal:=NVL(p_sal,0) + NVL(p_comm,0);
  IF p_comm IS NULL THEN
     v_comm:=500;
  ELSE
     v_comm:=p_comm;
  END IF;
  v_tot_sal:=NVL(p_sal,0) + v_comm;
  return v_tot_sal;
END TOT_SAL;
/
