DROP PROCEDURE SCOTT.DBS_BIG31;

CREATE OR REPLACE PROCEDURE SCOTT.DBS_BIG31(p_num1 number, p_num2 number, p_num3 number) IS
BEGIN
   IF p_num1>p_num2 AND p_num1>p_num3 THEN
      DBMS_OUTPUT.PUT_LINE('Biggest Number is :'||p_num1);
   END IF;

   IF p_num2>p_num3 AND p_num2>p_num1 THEN
         DBMS_OUTPUT.PUT_LINE('Biggest Number is :'||p_num2);
   END IF;

    IF p_num3>p_num1 AND p_num3>p_num2 THEN
         DBMS_OUTPUT.PUT_LINE('Biggest Number is :'||p_num3);
   END IF;

END;
/
