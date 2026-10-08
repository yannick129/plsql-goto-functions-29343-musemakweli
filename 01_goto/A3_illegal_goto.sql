SET SERVEROUTPUT ON;

-- Illegal code explanation:
-- Jumping INTO an IF statement block from outside is NOT allowed in PL/SQL.

-- Corrected Code:
DECLARE
    v_check BOOLEAN := TRUE;
BEGIN
    IF v_check THEN
        GOTO my_target;
    END IF;

    <<my_target>>
    DBMS_OUTPUT.PUT_LINE('Jumped legally outside the IF block.');
END;
/