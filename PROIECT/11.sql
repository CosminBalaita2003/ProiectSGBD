CREATE OR REPLACE TRIGGER modificare_regizor
    BEFORE UPDATE OF id_regizor
    ON filme
    FOR EACH ROW
BEGIN
    IF :NEW.id_regizor <> :OLD.id_regizor THEN
        raise_application_error(-20000, 'Nu puteti modifica regizorul unui film?');
    END IF;
END;
/
