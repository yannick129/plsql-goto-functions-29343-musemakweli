SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 12000;
BEGIN
    IF v_salary >= 15000 THEN
        GOTO high_sal;
    ELSIF v_salary >= 5000 THEN
        GOTO med_sal;
    ELSE
        GOTO low_sal;
    END IF;

    <<high_sal>>
    DBMS_OUTPUT.PUT_LINE('High Salary');
    GOTO exit_review;

    <<med_sal>>
    DBMS_OUTPUT.PUT_LINE('Medium Salary');
    GOTO exit_review;

    <<low_sal>>
    DBMS_OUTPUT.PUT_LINE('Low Salary');
    GOTO exit_review;

    <<exit_review>>
    DBMS_OUTPUT.PUT_LINE('Review completed.');
END;
/