SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 12000;
BEGIN
    IF v_salary >= 15000 THEN
        DBMS_OUTPUT.PUT_LINE('High Salary');
    ELSIF v_salary >= 5000 THEN
        DBMS_OUTPUT.PUT_LINE('Medium Salary');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Low Salary');
    END IF;
END;
/