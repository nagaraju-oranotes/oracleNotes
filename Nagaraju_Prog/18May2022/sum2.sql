CREATE OR REPLACE FUNCTION SUM2(p_num1 IN NUMBER, p_num2 IN NUMBER) RETURN NUMBER IS
  v_tot NUMBER;
BEGIN 
  v_tot:=NVL(p_num1,0) + NVL(p_num2,0);

  return v_tot;
END SUM2;
/
