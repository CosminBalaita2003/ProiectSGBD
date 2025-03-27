CREATE OR REPLACE PROCEDURE procesareactori(v_id filme.id_film%TYPE)
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
/