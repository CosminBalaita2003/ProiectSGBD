--Regizori

Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(1, 'Rober', 'Altman');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(2, 'Andrei', 'Tarkovsky');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(3, 'David', 'Lean');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(4, 'Shonda', 'Rimes');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(5, 'Buster', 'Keaton');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(6, 'Ben', 'Affleck');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(7, 'Andrei', 'Mihailescu');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(8, 'Dave', 'Franco');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(9, 'Kenneth', 'Branagh');
Insert Into Regizori(Id_Regizor, Prenume, Nume)
Values(10, 'Greta', 'Gerwig');




---Ratings
INSERT INTO RATINGS (ID_RATING, VALOARE)
values (1,'*');
INSERT INTO RATINGS (ID_RATING, VALOARE)
values (2,'**');
INSERT INTO RATINGS (ID_RATING, VALOARE)
values (3,'***');
INSERT INTO RATINGS (ID_RATING, VALOARE)
values (4,'****');
INSERT INTO RATINGS (ID_RATING, VALOARE)
values (5,'*****');



--Genuri
Insert into Genuri(id_gen,denumire)
values(1,'DRAMA');
Insert into Genuri(id_gen,denumire)
values(2,'ACTIUNE');
Insert into Genuri(id_gen,denumire)
values(3,'SCI-FI');
Insert into Genuri(id_gen,denumire)
values(4,'HORROR');
Insert into Genuri(id_gen,denumire)
values(5,'ANIMATIE');
Insert into Genuri(id_gen,denumire)
values(6,'COMEDIE');
Insert into Genuri(id_gen,denumire)
values(7,'DRAGOSTE');
Insert into Genuri(id_gen,denumire)
values(8,'THRILLER');
Insert into Genuri(id_gen,denumire)
values(9,'DOCUMENTAR');
--Actori
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (1, 'Johnny', 'Depp', TO_DATE('1963-06-09', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (2, 'Brad', 'Pitt', TO_DATE('1963-12-18', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (3, 'Tom', 'Hanks', TO_DATE('1956-07-09', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (4, 'Leonardo', 'DiCaprio', TO_DATE('1974-11-11', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (5, 'Robert', 'De Niro', TO_DATE('1943-08-17', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (6, 'Al', 'Pacino', TO_DATE('1940-04-25', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (7, 'Morgan', 'Freeman', TO_DATE('1937-06-01', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (8, 'Denzel', 'Washington', TO_DATE('1954-12-28', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (9, 'Russell', 'Crowe', TO_DATE('1964-04-07', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (10, 'Kevin', 'Spacey', TO_DATE('1959-07-26', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (11, 'Robert', 'Downey Jr.', TO_DATE('1965-04-04', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (12, 'Will', 'Smith', TO_DATE('1968-09-25', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (13, 'Ellen', 'Pompeo', TO_DATE('1969-11-10', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (14, 'Patrick', 'Dempsey', TO_DATE('1966-01-13', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (15, 'Sandra', 'Oh', TO_DATE('1971-07-20', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (16, 'Katherine', 'Heigl', TO_DATE('1978-11-24', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (17, 'Justin', 'Chambers', TO_DATE('1970-07-11', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (18, 'Helena', 'Bonham Carter', TO_DATE('1966-05-26', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (19, 'Orlando', 'Bloom', TO_DATE('1977-01-13', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (20, 'Keira', 'Knightley', TO_DATE('1985-03-26', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (21, 'Ian', 'Somerhalder', TO_DATE('1978-12-08', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (22, 'Paul', 'Wesley', TO_DATE('1982-07-23', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
VALUES (23, 'Nina', 'Dobrev', TO_DATE('1989-01-09', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
Values (24, 'Candice', 'King', TO_DATE('1987-05-13', 'YYYY-MM-DD'));
INSERT INTO ACTORI (ID_ACTOR, NUME, PRENUME, DATA_NASTERII)
Values (25, 'Kat', 'Graham', TO_DATE('1989-09-05', 'YYYY-MM-DD'));

--Filme

Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (1, 'Pirates of the Caribbean: The Curse of the Black Pearl', 143, 4, 1);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (2, 'Harry Potter and the Deathly Hallows: Part 2', 130, 4, 1);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (3, 'The Lord of the Rings: The Return of the King', 201, 4, 3);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (4, 'The Lord of the Rings: The Fellowship of the Ring', 178, 5, 3);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (5, 'Shadowhunters', 42, 4, 4);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (6, 'The Vampire Diaries', 43, 4, 5);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (7, 'Avengers: Endgame', 181, 4, 6);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (8, 'Avengers: Infinity War', 149, 2, 6);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (9, 'The Godfather', 175, 5, 7);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (10, 'Avatar', 162, 4, 8);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (11, 'The Dark Knight', 152, 5, 9);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (12, 'The Dark Knight Rises', 164, 4, 9);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (13, 'The Wolf of Wall Street', 180, 2, 1);
Insert into Filme (ID_FILM, TITLU, DURATA, ID_RATING, ID_REGIZOR)
VALUES (14, 'The Departed', 151, 4, 10);

--Filme-genuri
Insert into Filme_genuri(id_film,id_gen)
values (1,1);
Insert into Filme_genuri(id_film,id_gen)
values (2,2);
Insert into Filme_genuri(id_film,id_gen)
values (3,3);
Insert into Filme_genuri(id_film,id_gen)
values (4,4);
Insert into Filme_genuri(id_film,id_gen)
values (5,5);
Insert into Filme_genuri(id_film,id_gen)
values (6,6);
Insert into Filme_genuri(id_film,id_gen)
values (7,7);
Insert into Filme_genuri(id_film,id_gen)
values (8,8);
Insert into Filme_genuri(id_film,id_gen)
values (9,9);
Insert into Filme_genuri(id_film,id_gen)
values (10,1);
Insert into Filme_genuri(id_film,id_gen)
values (11,2);
Insert into Filme_genuri(id_film,id_gen)
values (12,3);
Insert into Filme_genuri(id_film,id_gen)
values (13,4);
Insert into Filme_genuri(id_film,id_gen)
values (14,5);
Insert into Filme_genuri(id_film,id_gen)
values (1,6);
Insert into Filme_genuri(id_film,id_gen)
values (1,7);
Insert into Filme_genuri(id_film,id_gen)
values (2,8);
Insert into Filme_genuri(id_film,id_gen)
values (3,9);

--Filme-actori


Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (1, 1);
Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (2, 1);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (3, 1);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (4, 1);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (5, 1);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (6, 1);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (7, 2);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (8, 2);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (9, 2);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (10, 2);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (11, 3);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (12, 3);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (13, 3);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (14, 3);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (15, 4);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (16, 4);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (17, 4);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (18, 4);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (19, 5);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES  (20, 5);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (21, 5);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (22, 5);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (23, 6);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (24, 6);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (1, 6);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUEs (2, 6);
Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (3, 7);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (4, 7);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (5, 7);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (6, 8);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (7, 8);

    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (8, 8);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (9, 9);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (10, 9);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (11, 9);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (12, 9);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (13, 10);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (14, 10);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (15, 11);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (16, 11);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (17, 11);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (18, 12);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUEs (19, 12);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (20, 12);
    Insert into  Actori_Filme (ID_ACTOR, ID_FILM)
VALUES  (21, 13); 
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (22, 13);
    Insert into  Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (23, 14);
    Insert into Actori_Filme (ID_ACTOR, ID_FILM)
VALUES (24, 14);

--cinematografe
Insert into Cinematografe (id_cinematograf, nume, oras)
Values (1, 'Cinema City', 'Cluj-Napoca');
Insert into Cinematografe (id_cinematograf, nume, oras)
Values (2, 'Cinema City', 'Bucuresti'); 
    Insert into Cinematografe (id_cinematograf, oras)
Values (3,  'Timisoara');
    Insert into Cinematografe (id_cinematograf, nume, oras)
Values (4, 'Cinema Magic', 'Iasi');
    Insert into Cinematografe (id_cinematograf, nume, oras)
Values (5, 'Cinema City', 'Constanta',);
    Insert into Cinematografe (id_cinematograf, nume, oras)
Values (6, 'Cinema City', 'Brasov');
    Insert into Cinematografe (id_cinematograf, nume, oras)
Values (7, 'Cinema City', 'Sibiu');
    Insert into Cinematografe (id_cinematograf, nume, oras)
Values  (8, 'Cinema City', 'Oradea');
select * from cinematografe;
--sali

Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (1, 1, 100);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (2, 1, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (3, 1, 120);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (4, 1, 130);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (5, 1, 140);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (6, 1, 150);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (7, 1, 160);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (8, 1, 170);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (9, 1, 180);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (10, 1, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (11, 2, 100);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (12, 2, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (13, 2, 120);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (14, 2, 130);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (15, 2, 140);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (16, 2, 150);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (17, 2, 160);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (18, 2, 170);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (19, 2, 180);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (20, 2, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (21, 2, 100);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (22, 2, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (23, 2, 120);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (24, 2, 130);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (25, 2, 140);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (26, 3, 150);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (27, 3, 160);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (28, 3, 170);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (29, 3, 180);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (30, 3, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (31, 3, 100);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (32, 3, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (33, 3, 120);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (34, 3, 130);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (35, 3, 140);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (36, 3, 150);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (37, 3, 160);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (38, 3, 170);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (39, 3, 180);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (40, 3, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (41, 4, 100);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (42, 4, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (43, 4, 120);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (44, 4, 130);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (45, 5, 140);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (46, 5, 150);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (47, 5, 160);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (48, 5, 170);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (49, 6, 180);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (50, 6, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (51, 6, 100);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (52, 6, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (53, 6, 120);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (54, 6, 130);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (55, 6, 140);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (56, 6, 150);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (57, 6, 160);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (58, 6, 170);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (59, 6, 180);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (60, 6, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (61, 7, 100);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (62, 7, 110);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (63, 7, 120);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (64, 7, 130);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (65,8, 140);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (66, 8, 150);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (67, 8, 160);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (68, 8, 170);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (69, 8, 180);
    Insert into Sali (id_sala, id_cinematograf, numar_locuri)
values (70, 8, 110);

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (1, 1, 'Popescu', 'Ion', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 2000, 'Casier');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (2, 1, 'Ionescu', 'Maria', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 2500, 'Vanator de bilete');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (3, 2, 'Dumitrescu', 'Elena', TO_DATE('1988-07-20', 'YYYY-MM-DD'), 2200, 'Agent de securitate');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (4, 3, 'Vasilescu', 'Andrei', TO_DATE('1992-09-12', 'YYYY-MM-DD'), 2300, 'Tehnician proiectie');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (5, 2, 'Mihai', 'Cristina', TO_DATE('1994-03-25', 'YYYY-MM-DD'), 2100, 'Asistent manager');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (6, 1, 'Constantinescu', 'Ana', TO_DATE('1991-12-08', 'YYYY-MM-DD'), 2400, 'Operator sonor');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (7, 3, 'Gheorghe', 'Mihai', TO_DATE('1987-06-14', 'YYYY-MM-DD'), 2600, 'Manager evenimente');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (8, 2, 'Stanescu', 'Adriana', TO_DATE('1993-04-30', 'YYYY-MM-DD'), 1900, 'Curier');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (9, 1, 'Diaconu', 'Dan', TO_DATE('1989-11-18', 'YYYY-MM-DD'), 2800, 'Director cinematograf');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie
VALUES (10, 3, 'Stoica', 'Larisa', TO_DATE('1995-08-22', 'YYYY-MM-DD'), 2000, 'Casier');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (11, 1, 'Nistor', 'Alexandru', TO_DATE('1986-02-05', 'YYYY-MM-DD'), 2100, 'Agent de paza');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (12, 2, 'Popa', 'Andreea', TO_DATE('1994-07-19', 'YYYY-MM-DD'), 2300, 'Operator lumini');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (13, 3, 'Radu', 'Catalina', TO_DATE('1990-03-10', 'YYYY-MM-DD'), 2500, 'Vanator de bilete');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (14, 1, 'Dinu', 'Victor', TO_DATE('1988-09-28', 'YYYY-MM-DD'), 2200, 'Coordonator proiecte');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (15, 2, 'Avram', 'Mara', TO_DATE('1993-05-16', 'YYYY-MM-DD'), 2700, 'Asistent director');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (16, 3, 'Moldovan', 'Razvan', TO_DATE('1987-12-03', 'YYYY-MM-DD'), 2400, 'Operator proiectie');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (17, 1, 'Dobre', 'Simona', TO_DATE('1991-10-14', 'YYYY-MM-DD'), 1900, 'Asistent manager');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (18, 2, 'Nedelcu', 'Andrei', TO_DATE('1996-04-27', 'YYYY-MM-DD'), 2000, 'Curier');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (19, 3, 'Barbu', 'Elena', TO_DATE('1989-06-08', 'YYYY-MM-DD'), 2100, 'Casier');
INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (20, 1, 'Dumitrache', 'Raluca', TO_DATE('1992-08-17', 'YYYY-MM-DD'), 2200, 'Agent de securitate');


INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (21, 4, 'Cristea', 'Andrei', TO_DATE('1993-11-05', 'YYYY-MM-DD'), 2300, 'Operator proiectie');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (22, 4, 'Gheorghiu', 'Maria', TO_DATE('1987-09-25', 'YYYY-MM-DD'), 2600, 'Manager cinematograf');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (23, 4, 'Dumitru', 'Elena', TO_DATE('1992-04-15', 'YYYY-MM-DD'), 2100, 'Casier');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (24, 4, 'Munteanu', 'Gabriel', TO_DATE('1996-08-12', 'YYYY-MM-DD'), 1900, 'Asistent manager');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (25, 4, 'Antonescu', 'Cristina', TO_DATE('1991-06-30', 'YYYY-MM-DD'), 2400, 'Tehnician sunet');


INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (26, 5, 'Iancu', 'Adrian', TO_DATE('1990-02-15', 'YYYY-MM-DD'), 2200, 'Agent de securitate');


INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (27, 5, 'Pop', 'Elena', TO_DATE('1984-07-10', 'YYYY-MM-DD'), 2000, 'Casier');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (28, 5, 'Mocanu', 'Alexandra', TO_DATE('1989-12-20', 'YYYY-MM-DD'), 2500, 'Vanator de bilete');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (29, 5, 'Georgescu', 'Ionut', TO_DATE('1994-03-01', 'YYYY-MM-DD'), 2300, 'Tehnician proiectie');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (30, 5, 'Radu', 'Andreea', TO_DATE('1985-11-18', 'YYYY-MM-DD'), 2800, 'Director cinematograf');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (31, 6, 'Dinu', 'Raluca', TO_DATE('1992-10-05', 'YYYY-MM-DD'), 2100, 'Agent de paza');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (32, 6, 'Vasile', 'Mihai', TO_DATE('1983-05-20', 'YYYY-MM-DD'), 2400, 'Operator lumini');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (33, 6, 'Ilie', 'Catalina', TO_DATE('1991-01-10', 'YYYY-MM-DD'), 2500, 'Vanator de bilete');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (34, 6, 'Balasoiu', 'Victor', TO_DATE('1988-08-28', 'YYYY-MM-DD'), 2200, 'Coordonator proiecte');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (35, 6, 'Popescu', 'Mara', TO_DATE('1993-07-16', 'YYYY-MM-DD'), 2700, 'Asistent director');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (36, 7, 'Pavel', 'Alexandru', TO_DATE('1987-12-03', 'YYYY-MM-DD'), 2400, 'Operator proiectie');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (37, 7, 'Nicolae', 'Simona', TO_DATE('1991-10-14', 'YYYY-MM-DD'), 1900, 'Asistent manager');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (38, 7, 'Cristina', 'Andrei', TO_DATE('1996-04-27', 'YYYY-MM-DD'), 2000, 'Curier');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (39, 7, 'Georgiana', 'Elena', TO_DATE('1989-06-08', 'YYYY-MM-DD'), 2100, 'Casier');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (40, 7, 'Dinca', 'Raluca', TO_DATE('1992-08-17', 'YYYY-MM-DD'), 2200, 'Agent de securitate');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (41, 8, 'Simion', 'Andrei', TO_DATE('1991-06-10', 'YYYY-MM-DD'), 2600, 'Manager evenimente');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (42, 8, 'Irina', 'Adriana', TO_DATE('1994-12-30', 'YYYY-MM-DD'), 2000, 'Curier');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (43, 8, 'Marian', 'Dan', TO_DATE('1986-08-18', 'YYYY-MM-DD'), 2400, 'Operator sonor');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (44, 8, 'Valentina', 'Mihai', TO_DATE('1993-01-25', 'YYYY-MM-DD'), 2100, 'Agent de paza');

INSERT INTO Angajati (id_angajat, id_cinematograf, nume, prenume, data_nasterii, salariu, functie)
VALUES (45, 8, 'Ionescu', 'Andreea', TO_DATE('1995-07-12', 'YYYY-MM-DD'), 2300, 'Operator lumini');

--Proiectii
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (1, 1, 1, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('12:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (2, 2, 2, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('14:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (3, 3, 3, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('16:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (4, 6, 4, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('18:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (5, 7, 5, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('20:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (6, 8, 6, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('22:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (7, 9, 7, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('12:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (8, 10, 8, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('14:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (9, 11, 9, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('16:00', 'HH24:MI')); 
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (10, 12, 10, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('18:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (11, 13, 11, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('20:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (12, 14, 12, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('22:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (13, 15, 13, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('12:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (14, 16, 14, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('14:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (15, 17, 1, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('16:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (16, 18, 2, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('18:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (17, 19, 3, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('20:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (18, 20, 4, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('22:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (19, 21, 5, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('12:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (20, 22, 6, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('14:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (21, 23, 7, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('16:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (22, 24, 8, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('18:00', 'HH24:MI'));
    
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (23, 25, 9, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('20:00', 'HH24:MI')); 
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (24, 26, 10, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('22:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (25, 27, 11, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('12:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (26, 28, 12, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('14:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (27, 29, 13, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('16:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (28, 30, 14, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('18:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (29, 31, 1, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('20:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (30, 32, 2, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('22:00', 'HH24:MI'));
    Insert into proiectii (id_proiectie, id_sala, id_film, data_proiectie, ora_incepere)
values (31, 33, 3, TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('12:00', 'HH24:MI'));

--SCAUNE

Insert into scaune (id_scaun, id_sala, numar, rand)
values (1, 1, 1, 1);
Insert into scaune (id_scaun, id_sala, numar, rand)
values (2, 1, 2, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (3, 1, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (4, 1, 4, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (5, 1, 5, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (6, 1, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (7, 1, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (8, 1, 8, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (9, 1, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (10, 1, 10, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (11, 1, 11, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (12, 1, 12, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (13, 1, 13, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (14, 1, 14, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (15, 1, 15, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (16, 1, 16, 4);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (17, 1, 17, 4);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (18, 1, 18, 4);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (19, 2, 1, 1);
    Insert into scaune  (id_scaun, id_sala, numar, rand)
values (20, 2, 2, 1);
    InSert into scaune (id_scaun, id_sala, numar, rand)
values (21, 2, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (22, 2, 4, 1);
Insert into scaune (id_scaun, id_sala, numar, rand)
values (23 , 2, 5, 1);
Insert into scaune (id_scaun, id_sala, numar, rand)
values (24, 2, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (25, 2, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (26, 2, 8, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (27, 2, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (28, 2, 10, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (29, 2, 11, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (30, 3, 1, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values  (31, 3, 2, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (32, 3, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (33, 3, 4, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (34, 3, 5, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (35, 3, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (36, 3, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (37, 3, 8, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (38, 3, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (39, 3, 10, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (40, 3, 11, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (41, 3, 12, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (42, 3, 13, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (43, 3, 14, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (44, 3, 15, 3);
Insert into scaune (id_scaun, id_sala, numar, rand)
values (45, 4, 1, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (46, 4, 2, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (47, 4, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (48, 4, 4, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (49, 4, 5, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (50, 4, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (51, 4, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (52, 4, 8, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (53, 4, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (54, 4, 10, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (55, 4, 11, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (56, 4, 12, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (57, 4, 13, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (58, 5, 1, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (59, 5, 2, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (60, 5, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (61, 5, 4, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (62, 5, 5, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (63, 5, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (64, 5, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (65, 5, 8, 2);
Insert into scaune (id_scaun, id_sala, numar, rand)
values (66, 5, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (67, 5, 10, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (68, 5, 11, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (69, 5, 12, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (70, 5, 13, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (71, 5, 14, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (72, 5, 15, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (73, 6, 1, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (74, 6, 2, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (75, 6, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (76, 6, 4, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (77, 6, 5, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (78, 6, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (79, 6, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (80, 6, 8, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (81, 6, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (82, 6, 10, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (83, 6, 11, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (84, 6, 12, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (85, 6, 13, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (86, 6, 14, 3);
Insert into scaune (id_scaun, id_sala, numar, rand)
values (87, 6, 15, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (88, 7, 1, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (89, 7, 2, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (90, 7, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (91, 7, 4, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (92, 7, 5, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (93, 7, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (94, 7, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (95, 7, 8, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (96, 7, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (97, 7, 10, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (98, 7, 11, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (99, 7, 12, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (100, 7, 13, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (101, 7, 14, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (102, 7, 15, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (103, 8, 1, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (104, 8, 2, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (105, 8, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (106, 8, 4, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (107, 8, 5, 1);
Insert into scaune (id_scaun, id_sala, numar, rand)
values (108, 8, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (109, 8, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (110, 8, 8, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (111, 8, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (112, 8, 10, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (113, 8, 11, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (114, 8, 12, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (115, 8, 13, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (116, 8, 14, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (117, 8, 15, 3);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (118, 9, 1, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (119, 9, 2, 1);
    Insert into scaune  (id_scaun, id_sala, numar, rand)
values (120, 9, 3, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (121, 9, 4, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (122, 9, 5, 1);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (123, 9, 6, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (124, 9, 7, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (125, 9, 8, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (126, 9, 9, 2);
    Insert into scaune (id_scaun, id_sala, numar, rand)
values (127, 9, 10, 2);

--CLIENTI
INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(1, 'Popescu', 'Ion', TO_DATE('1990-01-01', 'YYYY-MM-DD'), '0721123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(2, 'Ionescu', 'Maria', TO_DATE('1985-05-15', 'YYYY-MM-DD'), '0732123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(3, 'Dumitrescu', 'Elena', TO_DATE('1988-07-20', 'YYYY-MM-DD'), '0743123456');


INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(4, 'Vasilescu', 'Andrei', TO_DATE('1992-09-12', 'YYYY-MM-DD'), '0754123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(5, 'Mihai', 'Cristina', TO_DATE('1994-03-25', 'YYYY-MM-DD'), '0765123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(6, 'Constantinescu', 'Ana', TO_DATE('1991-12-08', 'YYYY-MM-DD'), '0776123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(7, 'Gheorghe', 'Mihai', TO_DATE('1987-06-14', 'YYYY-MM-DD'), '0787123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(8, 'Stanescu', 'Adriana', TO_DATE('1993-04-30', 'YYYY-MM-DD'), '0798123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(9, 'Diaconu', 'Dan', TO_DATE('1989-11-18', 'YYYY-MM-DD'), '0809123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(10, 'Stoica', 'Larisa', TO_DATE('1995-08-22', 'YYYY-MM-DD'), '0810123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(11, 'Nistor', 'Alexandru', TO_DATE('1986-02-05', 'YYYY-MM-DD'), '0821123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(12, 'Popa', 'Andreea', TO_DATE('1994-07-19', 'YYYY-MM-DD'), '0832123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(13, 'Radu', 'Catalina', TO_DATE('1990-03-10', 'YYYY-MM-DD'), '0843123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(14, 'Dinu', 'Victor', TO_DATE('1988-09-28', 'YYYY-MM-DD'), '0854123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(15, 'Avram', 'Mara', TO_DATE('1993-05-16', 'YYYY-MM-DD'), '0865123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(16, 'Moldovan', 'Razvan', TO_DATE('1987-12-03', 'YYYY-MM-DD'), '0876123456');


INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(17, 'Dobre', 'Simona', TO_DATE('1991-10-14', 'YYYY-MM-DD'), '0887123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(18, 'Nedelcu', 'Andrei', TO_DATE('1996-04-27', 'YYYY-MM-DD'), '0898123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(19, 'Barbu', 'Elena', TO_DATE('1989-06-08', 'YYYY-MM-DD'), '0909123456');

INSERT INTO CLIENTI (ID_CLIENT, NUME, PRENUME, DATA_NASTERII, TELEFON)
VALUES 
(20, 'Dumitrache', 'Raluca', TO_DATE('1992-08-17', 'YYYY-MM-DD'), '0910123456');

--bILETE
INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (1, 1, 1, 1, 20);
INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (2, 2, 2, 2, 20);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (3, 3, 3, 3, 20);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (4, 4, 4, 4, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (5, 5, 5, 5, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (6, 6, 6, 6, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (7, 7, 7, 7, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (8, 8, 8, 8, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (9, 9, 9, 9, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (10, 10, 10, 10, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (11, 11, 11, 11, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (12, 12, 12, 12, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (13, 13, 13, 13, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (14, 14, 14, 14, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (15, 15, 15, 15, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (16, 16, 16, 16, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (17, 1, 17, 17, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (18, 2, 18, 18, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (19, 3, 19, 19, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (20, 4, 20, 20, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (21, 5, 21, 1, 21);
INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (22, 6, 22, 2, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (23, 7, 23, 3, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (24, 8, 24, 4, 21);
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (25, 9, 25, 5, 21) ;
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (26, 10, 26, 6, 21) ;
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (27, 11, 27, 7, 21) ;
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (28, 12, 28, 8, 21) ;
    INSERT INTO BILETE (ID_BILET, ID_PROIECTIE, ID_SCAUN, ID_CLIENT, PRET)
VALUES (29, 13, 29, 9, 21) ;

