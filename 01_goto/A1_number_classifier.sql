-- 01_goto/A1_number_classifier.sql
SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER := -15;
BEGIN
    IF v_num > 0 THEN
        GOTO pos_label;
    ELSIF v_num < 0 THEN
        GOTO neg_label;
    ELSE
        GOTO zero_label;
    END IF;

    <<pos_label>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is POSITIVE.');
    GOTO end_label;

    <<neg_label>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is NEGATIVE.');
    GOTO end_label;

    <<zero_label>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is ZERO.');
    GOTO end_label;

    <<end_label>>
    DBMS_OUTPUT.PUT_LINE('Classification completed successfully.');
END;
/