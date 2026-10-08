
CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_emp_id IN NUMBER
) RETURN VARCHAR2 IS
    v_salary    employees.salary%TYPE;
    v_dept_id   employees.department_id%TYPE;
    v_dept_name departments.department_name%TYPE;
BEGIN
    SELECT salary, department_id
      INTO v_salary, v_dept_id
      FROM employees
     WHERE employee_id = p_emp_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be > 0';
    END IF;

    IF v_dept_id IS NULL THEN
        RETURN 'INVALID: No Department Assigned';
    END IF;

    v_dept_name := fn_dept_name(v_dept_id);
    IF v_dept_name = 'Unknown Department' THEN
        RETURN 'INVALID: Non-existent Department';
    END IF;

    RETURN 'VALID: Payroll Approved';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee Not Found';
END fn_validate_payroll;
/