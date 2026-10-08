CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_salary IN NUMBER
) RETURN NUMBER IS
BEGIN
    IF p_salary IS NULL OR p_salary < 0 THEN
        RETURN 0;
    END IF;
    RETURN p_salary * 12;
END fn_annual_salary;
/