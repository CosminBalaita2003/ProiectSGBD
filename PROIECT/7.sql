CREATE OR REPLACE PROCEDURE detalii_actualizare_bilete_eveniment(
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
/
drop trigger Manage_bilete;
DECLARE
    v_id_proiectie proiectii.id_proiectie%TYPE := 5;
    v_nou_pret     bilete.pret%TYPE            := 20;

BEGIN
    detalii_actualizare_bilete_eveniment(v_id_proiectie, v_nou_pret);
END;
/