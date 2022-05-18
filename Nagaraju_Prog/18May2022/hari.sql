CREATE OR REPLACE FUNCTION HARI(p_str VARCHAR2) RETURN VARCHAR2 IS
  lv_str VARCHAR2(200);
BEGIN
  lv_str:='Hello '||LOWER(p_str)||' Invited by Rama';
  RETURN lv_str;
END;
/
