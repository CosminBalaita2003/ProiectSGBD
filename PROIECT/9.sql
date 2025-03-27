CREATE OR REPLACE PROCEDURE proiectiipentruactori(v_nume IN actori.nume%TYPE)
AS
    --pentru a retine info despre proiectii
    TYPE infoproiectii IS RECORD
                          (
                              v_nume_a         actori.nume%TYPE,
                              v_prenume_a      actori.prenume%TYPE,
                              v_titlu          filme.titlu%TYPE,
                              v_nume_reg       regizori.nume%TYPE,
                              v_prenume_reg    regizori.prenume%TYPE,
                              v_ora_incepere   proiectii.ora_incepere%TYPE,
                              v_data_proiectie proiectii.data_proiectie%TYPE,
                              v_id_proiectie   proiectii.id_proiectie%TYPE
                          );
    TYPE proiectii_table IS TABLE OF infoproiectii;
    t_infoproiectii proiectii_table;
    var_nume        actori.nume%TYPE; --var folosita pentru no_data_found si too_many_rows

    exc1 EXCEPTION;
    exc2 EXCEPTION;

BEGIN
    BEGIN
        SELECT nume
        INTO var_nume
        FROM actori
        WHERE UPPER(nume) = UPPER(v_nume);

    EXCEPTION
        WHEN no_data_found THEN
            dbms_output.put_line('Nu exista actorul cu numele ' || v_nume);
            RETURN;
        WHEN too_many_rows THEN
            dbms_output.put_line('Exista mai multi actori cu numele ' || v_nume);
            RETURN;
    END;


    BEGIN
        SELECT DISTINCT A.nume,
                        A.prenume,
                        F.titlu,
                        R.nume,
                        R.prenume,
                        P.ora_incepere,
                        P.data_proiectie,
                        P.id_proiectie BULK COLLECT
        INTO t_infoproiectii
        FROM actori A
                 LEFT JOIN actori_filme af ON af.id_actor = A.id_actor
                 LEFT JOIN filme F ON F.id_film = af.id_film
                 LEFT JOIN regizori R ON R.id_regizor = F.id_regizor
                 LEFT JOIN proiectii P ON P.id_film = F.id_film
        WHERE UPPER(A.nume) = UPPER(v_nume);
        dbms_output.put_line('----------------------------------------------------------');
        dbms_output.put_line(t_infoproiectii(1).v_nume_a || ' ' || t_infoproiectii(1).v_prenume_a);
        dbms_output.put_line('----------------------------------------------------------');
        -- Exc1: Actorul nu joacã în niciun film
        IF t_infoproiectii(1).v_titlu IS NULL THEN
            dbms_output.put_line('!NU JOACA IN NICIUN FILM!');
            raise_application_error(-20001, 'Exc1: Actorul nu joacã în niciun film.');
        END IF;

        FOR I IN t_infoproiectii.FIRST .. t_infoproiectii.LAST
            LOOP
                -- Exc2: Actorul joacã în filme, dar unul dintre filme nu este programat încã
                IF t_infoproiectii(I).v_id_proiectie IS NULL THEN
                    dbms_output.put_line('!!JOACA INTR-UN FILM NEPROGRAMAT!!');
                    raise_application_error(-20002,
                                            'Exc2: Actorul joacã în filme, dar unul dintre filme nu este programat încã.');
                END IF;
                dbms_output.put_line('-------------------------------');
                dbms_output.put_line(t_infoproiectii(I).v_titlu);
                dbms_output.put_line(t_infoproiectii(I).v_nume_reg || ' ' || t_infoproiectii(I).v_prenume_reg);
                dbms_output.put_line(to_char(t_infoproiectii(I).v_ora_incepere, 'HH24:MI') || ' ' ||
                                     t_infoproiectii(I).v_data_proiectie);
                dbms_output.put_line('-------------------------------');
            END LOOP;
    END;

EXCEPTION
    WHEN exc1 THEN
        dbms_output.put_line(sqlerrm);
    WHEN exc2 THEN
        dbms_output.put_line(sqlerrm);
END;
/

EXECUTE proiectiipentruactori('&p_nume');

