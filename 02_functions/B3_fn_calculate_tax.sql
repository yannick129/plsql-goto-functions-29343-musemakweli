
CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_monthly_salary IN NUMBER
) RETURN NUMBER IS
    v_tax NUMBER := 0;
BEGIN
    IF p_monthly_salary IS NULL OR p_monthly_salary <= 0 THEN
        RETURN 0;
    END IF;

    IF p_monthly_salary <= 3000 THEN
        v_tax := p_monthly_salary * 0.05;
    ELSIF p_monthly_salary <= 10000 THEN
        v_tax := (3000 * 0.05) + ((p_monthly_salary - 3000) * 0.15);
    ELSE
        v_tax := (3000 * 0.05) + (7000 * 0.15) + ((p_monthly_salary - 10000) * 0.30);
    END IF;

    RETURN ROUND(v_tax, 2);
END fn_calculate_tax;
/