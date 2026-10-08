
SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- PAYROLL VALIDATOR TESTS ---');
    DBMS_OUTPUT.PUT_LINE('Emp 100: ' || fn_validate_payroll(100));
    DBMS_OUTPUT.PUT_LINE('Emp 105: ' || fn_validate_payroll(105));
    DBMS_OUTPUT.PUT_LINE('Emp 999: ' || fn_validate_payroll(999));
END;
/