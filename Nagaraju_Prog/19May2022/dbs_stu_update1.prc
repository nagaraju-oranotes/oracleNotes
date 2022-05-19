DROP PROCEDURE SCOTT.DBS_STU_UPDATE1;

CREATE OR REPLACE PROCEDURE SCOTT.DBS_STU_UPDATE1(p_admno number,p_fee number) IS
BEGIN
   IF p_fee<=0 THEN
      DBMS_OUTPUT.PUT_LINE('Invalid fee please enter positive value >=0');
   ELSE
       UPDATE DBS_STU 
       SET FEE=FEE-p_fee
       WHERE ADMNO=p_admno;
   COMMIT;
   END IF;
END;
/
