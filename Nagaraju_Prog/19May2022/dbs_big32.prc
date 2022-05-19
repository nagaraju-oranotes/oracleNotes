DROP PROCEDURE SCOTT.DBS_BIG32;

CREATE OR REPLACE PROCEDURE SCOTT.DBS_BIG32(p_num1 number, p_num2 number, p_num3 number) IS
BEGIN
   IF p_num1>p_num2 AND p_num1>p_num3 THEN
      DBMS_OUTPUT.PUT_LINE('Biggest Number is :'||p_num1);
   ELSIF p_num2>p_num3  THEN
         DBMS_OUTPUT.PUT_LINE('Biggest Number is :'||p_num2); 
   ELSE
         DBMS_OUTPUT.PUT_LINE('Biggest Number is :'||p_num3);
   END IF;
END;
/
