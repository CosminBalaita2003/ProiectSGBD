CREATE OR REPLACE PACKAGE pachet_cinematograf AS
    -- Tipuri definite
    -- Cursor pentru ob?inerea informatiilor despre proiectie
    CURSOR cursor_proiectie(p_id_proiectie proiectii.id_proiectie%TYPE) IS
        SELECT *
        FROM proiectii
        WHERE id_proiectie < p_id_proiectie;

    -- Cursor parametrizat SELECT ... FOR UPDATE pentru ot?inerea si blocarea detaliilor biletelor pentru proiectie
    CURSOR cursor_bilete(p_id_proiectie bilete.id_proiectie%TYPE) IS
        SELECT b.*
        FROM bilete b
        WHERE b.id_proiectie = p_id_proiectie
            FOR UPDATE OF b.pret; -- Actualizãm doar câmpul PRET


    TYPE infoactori IS RECORD
                       (
                           actor_id actori.id_actor%TYPE,
                           nume     actori.nume%TYPE,
                           prenume  actori.prenume%TYPE
                       );

    TYPE infoproiectie IS RECORD
                          (
                              id_proiectie   proiectii.id_proiectie%TYPE,
                              ora            proiectii.ora_incepere%TYPE,
                              data_proiectie proiectii.data_proiectie%TYPE,
                              sala           proiectii.id_sala%TYPE
                          );
    TYPE infoproiectii2 IS RECORD
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
    TYPE actori_index_table IS TABLE OF infoactori INDEX BY PLS_INTEGER;
    TYPE actori_imbricat IS TABLE OF infoactori;
    TYPE proiectii_vector IS VARRAY(100) OF infoproiectie;
    TYPE proiectii_table IS TABLE OF infoproiectii2;

    -- Proceduri
    PROCEDURE procesareactori(v_id filme.id_film%TYPE);
    PROCEDURE detalii_actualizare_bilete_eveniment(p_id_proiectie proiectii.id_proiectie%TYPE,
                                                   p_nou_pret bilete.pret%TYPE);
    PROCEDURE proiectiipentruactori(v_nume IN actori.nume%TYPE);

    -- Functii
    FUNCTION numarsaliangajat(numele angajati.nume%TYPE) RETURN VARCHAR2;

END pachet_cinematograf;
/

CREATE OR REPLACE PACKAGE BODY pachet_cinematograf AS

PROCEDURE procesareactori(v_id filme.id_film%TYPE)
AS
    --record pentru a memora informatiile despre actori
    --folosit pt tabelul indexat si cel imbricat
    TYPE infoactori IS RECORD
                       (
                           actor_id actori.id_actor%TYPE,
                           nume     actori.nume%TYPE,
                           prenume  actori.prenume%TYPE
                       );
    -- record pentru a memora info despre proiectiile filmului
    TYPE infoproiectie IS RECORD
                          (
                              id_proiectie   proiectii.id_proiectie%TYPE,
                              ora            proiectii.ora_incepere%TYPE,
                              data_proiectie proiectii.data_proiectie%TYPE,
                              sala           proiectii.id_sala%TYPE
                          );
    nume_film          VARCHAR2(100); --numele filmului cu id_ul v_id

    --tabela indexat pentru memorarea actorilor care joaca in film
    TYPE actori_index_table IS TABLE OF infoactori INDEX BY PLS_INTEGER;
    t_actori_index     actori_index_table;

    --tabel imbricat pt a memora actorii care NU joaca in film
    TYPE actori_imbricat IS TABLE OF infoactori;
    t_actori_imbricat  actori_imbricat  := actori_imbricat();

    --varray pentru a retine proiectiile filmului
    TYPE proiectii_vector IS VARRAY(100) OF infoproiectie;
    t_proiectii_vector proiectii_vector := proiectii_vector();
BEGIN
    BEGIN
        -- Verificare daca exista filmul cu ID-ul dat
    
        SELECT titlu
        INTO nume_film
        FROM filme
        WHERE id_film = v_id;
         EXCEPTION
        WHEN no_data_found THEN
     	dbms_output.put_line('filmul cu id-ul ' || V_ID || ' nu exista.');
        RETURN;
         END;
        

        ---memorare informatii despre actorii care joaca in filmul dat in tabelul indexat
        BEGIN
            SELECT A.id_actor,
                   A.nume,
                   A.prenume BULK COLLECT
            INTO t_actori_index
            FROM actori A
                     JOIN actori_filme af ON af.id_actor = A.id_actor
                     JOIN filme F ON F.id_film = af.id_film
            WHERE F.id_film = v_id;

            ---memorare in tabelul imbricat a actorilor care nu joaca in film
            FOR I IN (SELECT A.id_actor, A.nume, A.prenume
                      FROM actori A
                      WHERE A.id_actor NOT IN (SELECT a1.id_actor
                                               FROM actori a1
                                                        JOIN actori_filme af ON af.id_actor = a1.id_actor
                                               WHERE af.id_film = v_id))
                LOOP
                    t_actori_imbricat.extend;
                    t_actori_imbricat(t_actori_imbricat.LAST).actor_id := I.id_actor;
                    t_actori_imbricat(t_actori_imbricat.LAST).nume := I.nume;
                    t_actori_imbricat(t_actori_imbricat.LAST).prenume := I.prenume;
                END LOOP;

            FOR I IN (SELECT id_proiectie, ora_incepere, data_proiectie, id_sala
                      FROM proiectii
                      WHERE id_film = v_id)
                LOOP
                    t_proiectii_vector.extend;
                    t_proiectii_vector(t_proiectii_vector.LAST).id_proiectie := I.id_proiectie;
                    t_proiectii_vector(t_proiectii_vector.LAST).ora := I.ora_incepere;
                    t_proiectii_vector(t_proiectii_vector.LAST).data_proiectie := I.data_proiectie;
                    t_proiectii_vector(t_proiectii_vector.LAST).sala := I.id_sala;
                END LOOP;
            dbms_output.put_line('-------------------------------------------------');
            dbms_output.put_line(nume_film || ':');
            dbms_output.put_line('-------------------------------------------------');

            IF t_actori_index.COUNT = 0 THEN
                dbms_output.put_line('-----------------------------');
                dbms_output.put_line(nume_film || ':');
                dbms_output.put_line('Nu exista actori pentru filmul cu ID-ul ' || v_id);
                dbms_output.put_line('-----------------------------');
            ELSE
                dbms_output.put_line('Cast:');
                FOR I IN t_actori_index.FIRST..t_actori_index.LAST
                    LOOP
                        dbms_output.put_line(' ' || t_actori_index(I).nume || ' ' || t_actori_index(I).prenume);
                    END LOOP;
            END IF;

            IF t_actori_imbricat.COUNT = 0 THEN
                dbms_output.put_line('-----------------------------');
                dbms_output.put_line('TOTI ACTORII SUNT IN CAST');
                dbms_output.put_line('-----------------------------');
            ELSE
                dbms_output.put_line('-----------------------------');
                dbms_output.put_line('Nu fac parte din cast:');
                FOR I IN t_actori_imbricat.FIRST..t_actori_imbricat.LAST
                    LOOP
                        dbms_output.put_line(' ' || t_actori_imbricat(I).nume || ' ' || t_actori_imbricat(I).prenume);
                    END LOOP;
            END IF;


            IF t_proiectii_vector.COUNT = 0 THEN
                dbms_output.put_line('FILMUL NU ESTE INCA PROGRAMAT');
            ELSE
                dbms_output.put_line('----------------------------------------------------------');
                dbms_output.put_line('Proiectiile filmului ' || nume_film || ': ');
                dbms_output.put_line('----------------------------------------------------------');
                FOR I IN t_proiectii_vector.FIRST..t_proiectii_vector.LAST
                    LOOP
                        dbms_output.put_line('NR. PROIECTIE: ' || t_proiectii_vector(I).id_proiectie || ' ');

                        dbms_output.put_line('SALA: ' || t_proiectii_vector(I).sala);
                        dbms_output.put_line('DATA: ' || t_proiectii_vector(I).data_proiectie);
                        dbms_output.put_line('ORA: ' || to_char(t_proiectii_vector(I).ora, 'HH24:MI'));
                        dbms_output.put_line('-----------------------------');


                    END LOOP;
            END IF;
        END;

END procesareactori;


    PROCEDURE detalii_actualizare_bilete_eveniment(
    p_id_proiectie IN proiectii.id_proiectie%TYPE,
    p_nou_pret IN bilete.pret%TYPE
) AS
    -- Cursor pentru obtinerea informatiilor despre proiectie
    CURSOR cursor_proiectie IS
        SELECT *
        FROM proiectii
        WHERE id_proiectie < p_id_proiectie;

    proiectie_rec proiectii%ROWTYPE;

    -- Cursor parametrizat pentru obtinerea si blocarea detaliilor biletelor pentru proiectie
    CURSOR cursor_bilete(p_id_proiectie_param proiectii.id_proiectie%TYPE) IS
        SELECT *
        FROM bilete
        WHERE id_proiectie = p_id_proiectie_param
        FOR UPDATE OF pret; -- Actualizãm doar câmpul PRET

    bilet_rec bilete%ROWTYPE;

BEGIN
    -- Deschide cursorul pentru informatii despre proiectie
    OPEN cursor_proiectie;
    loop
    FETCH cursor_proiectie INTO proiectie_rec;
    EXIT WHEN cursor_proiectie%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('__________________________________________________');
    DBMS_OUTPUT.PUT_LINE('Detalii proiectie: ' || proiectie_rec.id_proiectie || ', ' || proiectie_rec.data_proiectie || ', ' || proiectie_rec.ora_incepere);

    -- Deschide cursorul parametrizat pentru detaliile biletelor si actualizeazã PRET-ul
OPEN cursor_bilete(proiectie_rec.id_proiectie);

-- Parcurge cursorul pentru fiecare înregistrare
LOOP
    FETCH cursor_bilete INTO bilet_rec;

    -- Iesire din bucla când nu mai existã înregistrãri
    EXIT WHEN cursor_bilete%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('Pret bilet ' || bilet_rec.id_bilet || ' înainte de actualizare: ' || bilet_rec.pret);

    -- Actualizare PRET
    UPDATE bilete
    SET pret = p_nou_pret
    WHERE CURRENT OF cursor_bilete;

    DBMS_OUTPUT.PUT_LINE('Pret bilet ' || bilet_rec.id_bilet || ' dupã actualizare: ' || p_nou_pret);
END LOOP;
    
-- Închide cursorul parametrizat pentru detaliile biletelor
CLOSE cursor_bilete;

end loop;
close cursor_proiectie;

END detalii_actualizare_bilete_eveniment;
    PROCEDURE proiectiipentruactori(v_nume IN actori.nume%TYPE) IS
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


    END proiectiipentruactori;

    FUNCTION numarsaliangajat(numele angajati.nume%TYPE) RETURN VARCHAR2 IS
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
                 LEFT JOIN sali S ON C.id_cinematograf = S.id_cinematograf --pt caul in care nu exista sali
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

    END numarsaliangajat;

END pachet_cinematograf;
/


--6
execute pachet_cinematograf.procesareactori(1);
/
--7
DECLARE
    v_id_proiectie proiectii.id_proiectie%TYPE := 5;
    v_nou_pret     bilete.pret%TYPE            := 25;

BEGIN
    pachet_cinematograf.detalii_actualizare_bilete_eveniment(v_id_proiectie, v_nou_pret);
END;
/
--8
DECLARE
    v_nume angajati.nume%TYPE := UPPER('&p_nume');
BEGIN
    dbms_output.put_line(pachet_cinematograf.numarsaliangajat(v_nume));
END;
/
--9
EXECUTE proiectiipentruactori('&p_nume');
--10