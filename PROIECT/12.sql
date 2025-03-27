CREATE TABLE activitate_baza_de_date
(
nume_baza_de_date VARCHAR2(50),
user_logat VARCHAR2(50),
eveniment VARCHAR2(2000),
data_eveniment TIMESTAMP
);
CREATE OR REPLACE TRIGGER evenimente_after_logon
AFTER LOGON ON SCHEMA 
BEGIN
  INSERT INTO activitate_baza_de_date
  VALUES (SYS.database_name, SYS.login_user, 'Utilizator logat', systimestamp);
END;
/

CREATE OR REPLACE TRIGGER evenimente_before_logoff
BEFORE LOGOFF ON SCHEMA 
BEGIN
  INSERT INTO activitate_baza_de_date
  VALUES (SYS.database_name, SYS.login_user, 'utilizator delogat', systimestamp);
END;
/

CREATE OR REPLACE TRIGGER evenimente_after_servererror
AFTER SERVERERROR ON SCHEMA 
BEGIN
  INSERT INTO activitate_baza_de_date
  VALUES (SYS.database_name, SYS.login_user, dbms_utility.format_error_stack, systimestamp);
  dbms_output.put_line(dbms_utility.format_error_stack|| ' ' ||SYS.login_user);
END;
/  
SELECT * FROM activitate_baza_de_date;
SELECT * FROM tabelinexistent;
--tigger definit la ex 11
UPDATE filme
SET id_regizor = 2
WHERE id_film=1;
--trigger definit la ex 10
INSERT INTO bilete(id_bilet, pret, id_proiectie, id_scaun, id_client)
VALUES (33, 20, 2, 33, 2);
drop trigger evenimente_after_servererror;