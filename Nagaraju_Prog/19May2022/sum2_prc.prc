DROP PROCEDURE SCOTT.SUM2_PRC;

CREATE OR REPLACE procedure SCOTT.sum2_prc(p_num1 in number, p_num2 in number) is
  v_res number;
begin
  v_res:=p_num1+p_num2;
  dbms_output.put_line('Sum of Two Numbers: '||v_res);
end;
/
