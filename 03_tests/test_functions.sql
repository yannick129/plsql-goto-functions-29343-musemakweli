
SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- TESTING FUNCTIONS ---');
    DBMS_OUTPUT.PUT_LINE('Annual Salary ($5000): ' || fn_annual_salary(5000));
    DBMS_OUTPUT.PUT_LINE('Tax for $2500: ' || fn_calculate_tax(2500));
    DBMS_OUTPUT.PUT_LINE('Tax for $8000: ' || fn_calculate_tax(8000));
    DBMS_OUTPUT.PUT_LINE('Tax for $15000: ' || fn_calculate_tax(15000));
    DBMS_OUTPUT.PUT_LINE('Dept Name (60): ' || fn_dept_name(60));
    DBMS_OUTPUT.PUT_LINE('Dept Name (999): ' || fn_dept_name(999));
END;
/