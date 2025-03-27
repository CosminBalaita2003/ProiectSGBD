CREATE OR REPLACE TRIGGER manage_bilete
    BEFORE INSERT OR DELETE OR UPDATE
    ON bilete
BEGIN
    IF (to_char(sysdate, 'hh24') NOT BETWEEN 8 AND 18)
    THEN
        raise_application_error(-20001,
                                'Nu se pot modifica biletele decat in timpul programului de lucru. Reveniti maine!');
    END IF;

END;
/

INSERT INTO bilete(id_bilet, pret, id_proiectie, id_scaun, id_client)
VALUES (33, 20, 2, 33, 2);
