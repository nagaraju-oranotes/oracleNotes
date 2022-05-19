DROP PROCEDURE SCOTT.DBS_NIF;

CREATE OR REPLACE PROCEDURE SCOTT.DBS_NIF(p_country varchar2, p_state varchar2) IS
BEGIN

   IF p_country='INDIA' then
        IF p_state='ANDHRA' then
            DBMS_OUTPUT.PUT_LINE('country is :'||p_country||' State is: '||p_state||' Budget 1000');
        ELSIF p_state='TELANGANA' then
            DBMS_OUTPUT.PUT_LINE('country is :'||p_country||' State is: '||p_state||' Budget 2000');
        ELSIF p_state='KERALA' then
            DBMS_OUTPUT.PUT_LINE('country is :'||p_country||' State is: '||p_state||' Budget 3000');
        ELSE
            DBMS_OUTPUT.PUT_LINE('country is :'||p_country||' State is: '||p_state||' Budget 500');
        END IF;
   ELSIF p_country='CHINA' then
        DBMS_OUTPUT.PUT_LINE('country is :'||p_country||' State is: '||p_state||' Budget 200');
   ELSIF p_country='PAK' then
        DBMS_OUTPUT.PUT_LINE('country is :'||p_country||' State is: '||p_state||' Budget 100');
   ELSE
       DBMS_OUTPUT.PUT_LINE('Unknown data');
   END IF;

END;
/
