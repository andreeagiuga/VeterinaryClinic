
--------------------------------------crearea tabelelor-----------------------------------------------------------------

CREATE TABLE proprietari_animale (
    id_proprietar NUMBER(10) CONSTRAINT PKey_proprietari PRIMARY KEY,
    nume VARCHAR2(30) NOT NULL,
    prenume VARCHAR2(30) NOT NULL,
    telefon VARCHAR2(10),
    email VARCHAR2(50)
);
CREATE TABLE pacienti (
    id_pacient NUMBER(10) CONSTRAINT PKey_pacient PRIMARY KEY,
    nume VARCHAR2(30) NOT NULL,
    specie VARCHAR2(30) NOT NULL,
    rasa VARCHAR2(50),
    data_nasterii DATE,
    id_proprietar NUMBER(10) NOT NULL,
    CONSTRAINT FK_id_proprietar FOREIGN KEY (id_proprietar) REFERENCES proprietari_animale (id_proprietar) 
);

CREATE TABLE dr_veterinari (
    id_veterinar NUMBER(10) CONSTRAINT PKey_veterinari PRIMARY KEY,
    nume VARCHAR2(30) NOT NULL,
);

CREATE TABLE servicii(
id_serviciu NUMBER(10) CONSTRAINT PKey_servicii PRIMARY KEY,
descriere VARCHAR2(100),
costul NUMBER (10,2)
);

CREATE TABLE programari (
id_programare NUMBER(10) CONSTRAINT PKey_programari PRIMARY KEY, 
id_pacient NUMBER(10) NOT NULL,
data_programarii DATE NOT NULL
ora_programarii VARCHAR2(30) NOT NULL,
id_veterinar NUMBER(10) NOT NULL, 
id_serviciu NUMBER(10) NOT NULL,
CONSTRAINT FK_id_pacient FOREIGN KEY (id_pacient) REFERENCES pacienti (id_pacient),
CONSTRAINT FK_id_veterinar FOREIGN KEY (id_veterinar) REFERENCES dr_veterinari (id_veterinar),
CONSTRAINT FK_id_serviciu FOREIGN KEY (id_serviciu) REFERENCES servicii (id_serviciu),
);







-----------------------------------------inserarea datelor------------------------------------------------------------


INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (1, 'Ecaterina', 'Maria', '0741123456', 'ecaterina.maria@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (2, 'Grecu', 'Andra', '0742123456', 'grecu.andra@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (3, 'Dragomir', 'Madalin', '0743123456', 'dragomir.madalin@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (4, 'Stoenescu', 'Ana', '0744123456', 'stoenescu.ana@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (5, 'Chituta', 'Claudiu', '0745123456', 'chituta.claudiu@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (6, 'Hototboc', 'Ovidiu', '0746123456', 'hototboc.ovidiu@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (7, 'Gruia', 'Alexandru', '0747123456', 'gruia.alexandru@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (8, 'Ciuca', 'Luis', '0748123456', 'ciuca.luis@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (9, 'Deaconescu', 'Simina', '0749123456', 'deaconescu.simina@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (10, 'Avramescu', 'Denisa', '0750123456', 'avramescu.denisa@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (11, 'Teodor', 'Andrada', '0751123456', 'teodor.andrada@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (12, 'Terente', 'Delia', '0752123456', 'terente.delia@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (13, 'Crasnaru', 'Florin', '0753123456', 'crasnaru.florin@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (14, 'Spiridon', 'Vasile', '0754123456', 'spiridon.vasile@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (15, 'Sucea', 'Cristiana', '0755123456', 'sucea.cristiana@email.com');
INSERT INTO proprietari_animale (id_proprietar, nume, prenume, telefon, email) VALUES (16, 'Cotojman', 'Ionut', '0756123456', 'cotojman.ionut@email.com');



INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (1, 'Max', 'Câine', 'Golden Retriever', TO_DATE('2019-09-10', 'YYYY-MM-DD'), 1);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (2, 'Bella', 'Pisică', 'Siamese', TO_DATE('2020-03-13', 'YYYY-MM-DD'), 2);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (3, 'Rex', 'Câine', 'maidanez', TO_DATE('2021-07-07', 'YYYY-MM-DD'), 3);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (4, 'Luna', 'Pisică', 'British', TO_DATE('2018-06-16', 'YYYY-MM-DD'), 4);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (5, 'Charlie', 'Câine', 'Labrador', TO_DATE('2020-07-19', 'YYYY-MM-DD'), 5);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (6, 'Botic', 'Pisică', 'maidanez', TO_DATE('2016-11-08', 'YYYY-MM-DD'), 6);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (7, 'Bunny', 'Iepure', 'Belier', TO_DATE('2024-01-11', 'YYYY-MM-DD'), 7);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (8, 'Simba', 'Pisică', 'Maine Coon', TO_DATE('2013-11-25', 'YYYY-MM-DD'), 8);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (9, 'Oscar', 'Câine', 'Bulldog', TO_DATE('2019-02-18', 'YYYY-MM-DD'), 9);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (10, 'Cleo', 'Pisică', 'Bengaleză', TO_DATE('2015-05-03', 'YYYY-MM-DD'), 10);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (11, 'Rocky', 'Câine', 'Doberman', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 11);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (12, 'Milo', 'Iepure', 'Angora', TO_DATE('2023-09-12', 'YYYY-MM-DD'), 12);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (13, 'Chloe', 'Pisică', 'Himalayan', TO_DATE('2017-12-20', 'YYYY-MM-DD'), 13);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (14, 'Bobby', 'Câine', 'Bichon', TO_DATE('2021-03-15', 'YYYY-MM-DD'), 14);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (15, 'Norocel', 'Pisică', 'maidanez', TO_DATE('2018-09-10', 'YYYY-MM-DD'), 15);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (16, 'Shadow', 'Câine', 'Husky', TO_DATE('2020-05-18', 'YYYY-MM-DD'), 15);
INSERT INTO pacienti (id_pacient, nume, specie, rasa, data_nasterii, id_proprietar) VALUES (17, 'Misty', 'Pisică', 'Norvegiană', TO_DATE('2017-11-08', 'YYYY-MM-DD'), 15);


INSERT INTO dr_veterinari (id_veterinar, nume) VALUES (1, 'Dr.Alexandru');
INSERT INTO dr_veterinari (id_veterinar, nume) VALUES (2, 'Dr.Monica');
INSERT INTO dr_veterinari (id_veterinar, nume) VALUES (3, 'Dr.Edi');


INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (1, 'Consultație generală', 100.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (2, 'Vaccinare antirabică', 50.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (3, 'Deparazitare internă', 70.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (4, 'Sterilizare câine', 700.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (5, 'Sterilizare pisică', 500.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (6, 'Chirurgie veterinară', 800.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (7, 'Ecografie veterinară', 200.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (8, 'Radiografie veterinară', 150.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (9, 'Examen bacteriologic', 300.00);
INSERT INTO servicii (id_serviciu, descriere, costul) VALUES (10, 'Microcipare', 90.00);




INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (1, 1, TO_DATE('2025-01-10', 'YYYY-MM-DD'), '10:00', 1, 1);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (2, 2, TO_DATE('2025-01-10', 'YYYY-MM-DD'), '11:30', 2, 3);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (3, 3, TO_DATE('2025-01-10', 'YYYY-MM-DD'), '13:00', 2, 2);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (4, 4, TO_DATE('2025-01-10', 'YYYY-MM-DD'), '15:00', 1, 5);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (5, 5, TO_DATE('2025-01-10', 'YYYY-MM-DD'), '18:30', 2, 4);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (6, 6, TO_DATE('2025-01-11', 'YYYY-MM-DD'), '10:30', 3, 2);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (7, 7, TO_DATE('2025-01-11', 'YYYY-MM-DD'), '12:00', 3, 8);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (8, 8, TO_DATE('2025-01-11', 'YYYY-MM-DD'), '12:30', 3, 5);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (9, 9, TO_DATE('2025-01-11', 'YYYY-MM-DD'), '16:30', 2, 8);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (10, 10, TO_DATE('2025-01-11', 'YYYY-MM-DD'), '17:00', 2, 7);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (11, 11, TO_DATE('2025-01-11', 'YYYY-MM-DD'), '17:30', 2, 9);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (12, 12, TO_DATE('2025-01-12', 'YYYY-MM-DD'), '09:30', 1, 8);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (13, 13, TO_DATE('2025-01-12', 'YYYY-MM-DD'), '10:30', 1, 3);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (14, 14, TO_DATE('2025-01-12', 'YYYY-MM-DD'), '12:45', 2, 4);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (15, 15, TO_DATE('2025-01-12', 'YYYY-MM-DD'), '14:00', 1, 5);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (16, 16, TO_DATE('2025-01-12', 'YYYY-MM-DD'), '16:00', 1, 6);
INSERT INTO programari (id_programare, id_pacient, data_programarii, ora_programarii, id_veterinar, id_serviciu) VALUES (17, 17, TO_DATE('2025-01-12', 'YYYY-MM-DD'), '17:00', 3, 7);





----------------------exemplificarea a 3 update uri-----------------------------------------------------------------------------

//actualizarea costului unui serviciu 
UPDATE servicii
SET costul=100
WHERE id_serviciu=2;

//schimbarea datii programarii pentru toti pacientii care au acelasi proprietar
UPDATE programari
SET data_programarii = TO_DATE('2025-02-01', 'YYYY-MM-DD')
WHERE id_pacient IN (SELECT id_pacient FROM pacienti WHERE id_proprietar = 15);

//actualizarea serviciilor care au costul mai mic de 150, crescandu l cu 10%
UPDATE servicii 
SET costul= costul * 1.10
WHERE costul<150;



-------------------------exemplificarea a 5 selecturi de complexitate mica-------------------------------------------------------


//afisarea prietarilor de animale al caror nume incepe cu litera 's'
SELECT id_proprietar, nume, prenume, telefon, email 
FROM proprietari_animale 
WHERE LOWER(nume) LIKE 's%';


//afisarea pacientilor care au specia pisica 
SELECT id_pacient, nume, rasa, data_nasterii,id_proprietar
FROM pacienti
WHERE specie = 'Pisică';

//afisarea programarilor pentru o anumita data
SELECT id_programare, id_pacient, ora_programarii
FROM programari
WHERE data_programarii = TO_DATE('2025-01-11', 'YYYY-MM-DD');

//afisarea serviciilor cu costul mai mic de 500
SELECT id_serviciu, descriere, costul
FROM servicii 
WHERE costul < 500;

//afisarea animalelor nascute dupa anul 2020
SELECT id_pacient, nume, data_nasterii
FROM pacienti 
WHERE data_nasterii > TO_DATE('2020-01-01', 'YYYY-MM-DD');



------------------------------------------------exemplificarea a 5 selecturi de complexitate ridicata ---------------

//numarul tottal de pacienti pentru fiecare specie 
SELECT specie, COUNT(*) AS numar_pacienti 
FROM pacienti 
GROUP BY specie;

//venitul total generat de fiecare serviciu 
SELECT s.descriere, SUM(s.costul) AS venit_total
FROM programari p, servicii s
WHERE p.id_serviciu =s.id_serviciu
GROUP BY s.descriere;

//gasirea celui mai utilizat serviciu
SELECT id_serviciu, COUNT(*) AS serviciu_frecventat
FROM programari
GROUP BY id_serviciu
ORDER BY serviciu frecventat DESC 
FETCH FIRST 1 ROWS ONLY;

//afisarea venitului generat zilnic 
SELECT data_programarii, SUM(s.costul) AS venit_zi
WHERE p.id_serviciu = s.id_serviciu
GROUP BY data_programarii
ORDER BY data_programarii;


//afisarea medicului cu cel mai mare numar de programari 
SELECT v.id_veterinar, v.nume, COUNT(p.id_programare) AS numar_programari
FROM dr_veterinari v, programari p
WHERE v.id_veterinar = p.id_veterinar 
GROUP BY v.id_veterinar, v.nume 
ORDER BY numar_programari DESC 
FETCH FIRST 1 ROWS ONLY;


--------------------------------------tabela virtuala----------------

// crearea unui tabele virtuale pentru a afisa o lista completa de pacienti impreuna cu datele de contact ale proprietarilor 
CREATE VIEW pacienti_proprietari_view AS 
SELECT p.id_pacient, p.nume AS nume_pacient, 
p.specie, p.rasa, p.data_nasterii, pr.nume AS nume_proprietar,
pr.prenume AS prenume_proprietar,
pr.telefon, pr.email
FROM pacienti p, proprietari_animale pr
WHERE p.id_proprietar = pr.id_proprietar;
SELECT * 
FROM pacienti_proprietari_view;



----------------------------------index-----------------------------

// crearea unui index pe tabela pacienti pe coloana specie

CREATE INDEX idx_specie ON pacienti(specie);
SELECT * FROM pacienti WHERE specie='Pisică';

