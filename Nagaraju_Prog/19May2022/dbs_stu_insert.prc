DROP PROCEDURE SCOTT.DBS_STU_INSERT;

CREATE OR REPLACE PROCEDURE SCOTT.DBS_STU_INSERT(p_admno number, p_sname varchar2, p_course varchar2, p_fee number default 0) IS
BEGIN
   INSERT INTO DBS_STU(admno,sname,course,fee)
   VALUES(p_admno,p_sname,p_course,p_fee);
   COMMIT;
END;
/
