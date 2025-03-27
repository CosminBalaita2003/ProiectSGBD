CREATE OR REPLACE FUNCTION numarsaliangajat(numele angajati.nume%TYPE)
    RETURN VARCHAR2
    IS
    rez   VARCHAR2(150) := '';
    orass cinematografe.oras%TYPE;
    nr    NUMBER;
    exc1 EXCEPTION; --exceptie pt cazul cu 0 sali
    exc2 EXCEPTION; --exceptie pt cazul cu <=4 sali
BEGIN
    SELECT nvl(COUNT(S.id_sala), 0) AS num_sala, C.oras
    INTO nr, orass
    FROM angajati A
             JOIN cinematografe C ON A.id_cinematograf = C.id_cinematograf
             LEFT JOIN sali S ON C.id_cinematograf = S.id_cinematograf --pt cazul in care nu exista sali
    --in cinematograful in care lucreaza
    WHERE UPPER(A.nume) = UPPER(numele)
    GROUP BY C.oras;
    IF nr = 0 THEN
        raise_application_error(-20003, 'EXC1: cinematograful in care lucreaza angajatul ' || numele ||
                                        ' nu are sali. Se recomanda inchiderea');
    ELSIF nr < 5 THEN
        raise_application_error(-20004, 'EXC2: cinematograful in care lucreaza angajatul ' || numele ||
                                        ' are un numar mic de sali. Se recomanda redistribuirea angajatului la alt cinematograf');
    END IF;

    rez := numele || ' lucreaza in ' || orass || ' unde sunt ' || to_char(nr) || ' sali' || rez;

    RETURN rez;
EXCEPTION
    WHEN too_many_rows THEN
        dbms_output.put_line('Exista mai multi angajati cu numele ' || numele);
        RETURN NULL;
    WHEN no_data_found THEN
        dbms_output.put_line('Nu exista angajati cu numele ' || numele);
        RETURN NULL;
    WHEN exc1 THEN
        dbms_output.put_line(sqlerrm);
        RETURN NULL;
    WHEN exc2 THEN
        dbms_output.put_line(sqlerrm);
        RETURN NULL;
    WHEN OTHERS THEN
        dbms_output.put_line('Error: ' || sqlerrm);
        RETURN NULL;
END;
/

DECLARE
    v_nume angajati.nume%TYPE := UPPER('&p_nume');
BEGIN
    dbms_output.put_line(numarsaliangajat(v_nume));
END;
/
