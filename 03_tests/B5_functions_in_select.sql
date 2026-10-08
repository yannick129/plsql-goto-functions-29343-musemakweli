SELECT 
    employee_id,
    first_name || ' ' || last_name AS full_name,
    salary,
    fn_annual_salary(salary) AS annual_salary,
    fn_years_of_service(hire_date) AS service_years,
    fn_calculate_tax(salary) AS monthly_tax,
    fn_dept_name(department_id) AS department
FROM employees;