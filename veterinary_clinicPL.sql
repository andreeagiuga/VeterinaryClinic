-- =============================================================================
-- SISTEMUL DE MANAGEMENT AL UNEI CLINICI VETERINARE
-- Baza de date: SQL / PL/SQL (Oracle)
-- Student: GIUGA DENISA - ANDREEA
-- =============================================================================


-- =============================================================================
-- 1. CREAREA TABELELOR
-- =============================================================================

CREATE TABLE proprietari_animale (
    id_proprietar NUMBER(10)   CONSTRAINT PKey_proprietari PRIMARY KEY,
    nume          VARCHAR2(30) NOT NULL,
    prenume       VARCHAR2(30) NOT NULL,
    telefon       VARCHAR2(10),
    email         VARCHAR2(50)
);

CREATE TABLE pacienti (
    id_pacient    NUMBER(10)   CONSTRAINT Pkey_pacient PRIMARY KEY,
    nume          VARCHAR2(30) NOT NULL,
    specie        VARCHAR2(30) NOT NULL,
    rasa          VARCHAR2(50),
    varsta        NUMBER(10),
    id_proprietar NUMBER(10)   NOT NULL,
    CONSTRAINT FK_id_proprietar FOREIGN KEY (id_proprietar)
        REFERENCES proprietari_animale (id_proprietar)
);

CREATE TABLE dr_veterinari (
    id_veterinar NUMBER(10)   CONSTRAINT PKey_veterinari PRIMARY KEY,
    nume         VARCHAR2(30) NOT NULL
);

CREATE TABLE servicii (
    id_serviciu NUMBER(10)    CONSTRAINT PKey_servicii PRIMARY KEY,
    descriere   VARCHAR2(100),
    costul      NUMBER(10, 2)
);

CREATE TABLE programari (
    id_programare   NUMBER(10)   CONSTRAINT PKey_programari PRIMARY KEY,
    id_pacient      NUMBER(10)   NOT NULL,
    data_programarii DATE        NOT NULL,
    ora_programarii  VARCHAR2(30) NOT NULL,
    id_veterinar    NUMBER(10)   NOT NULL,
    id_serviciu     NUMBER(10)   NOT NULL,
    CONSTRAINT FK_id_pacient   FOREIGN KEY (id_pacient)   REFERENCES pacienti (id_pacient),
    CONSTRAINT FK_id_veterinar FOREIGN KEY (id_veterinar) REFERENCES dr_veterinari (id_veterinar),
    CONSTRAINT FK_id_serviciu  FOREIGN KEY (id_serviciu)  REFERENCES servicii (id_serviciu)
);


-- =============================================================================
-- 2. INSERAREA DATELOR
-- =============================================================================

-- Proprietari
INSERT INTO proprietari_animale VALUES (1,  'Ecaterina',  'Maria',     '0741123456', 'ecaterina.maria@email.com');
INSERT INTO proprietari_animale VALUES (2,  'Grecu',      'Andra',     '0742123456', 'grecu.andra@email.com');
INSERT INTO proprietari_animale VALUES (3,  'Dragomir',   'Madalin',   '0743123456', 'dragomir.madalin@email.com');
INSERT INTO proprietari_animale VALUES (4,  'Stoenescu',  'Ana',       '0744123456', 'stoenescu.ana@email.com');
INSERT INTO proprietari_animale VALUES (5,  'Chituta',    'Claudiu',   '0745123456', 'chituta.claudiu@email.com');
INSERT INTO proprietari_animale VALUES (6,  'Hototboc',   'Ovidiu',    '0746123456', 'hototboc.ovidiu@email.com');
INSERT INTO proprietari_animale VALUES (7,  'Gruia',      'Alexandru', '0747123456', 'gruia.alexandru@email.com');
INSERT INTO proprietari_animale VALUES (8,  'Ciuca',      'Luis',      '0748123456', 'ciuca.luis@email.com');
INSERT INTO proprietari_animale VALUES (9,  'Deaconescu', 'Simina',    '0749123456', 'deaconescu.simina@email.com');
INSERT INTO proprietari_animale VALUES (10, 'Avramescu',  'Denisa',    '0750123456', 'avramescu.denisa@email.com');
INSERT INTO proprietari_animale VALUES (11, 'Teodor',     'Andrada',   '0751123456', 'teodor.andrada@email.com');
INSERT INTO proprietari_animale VALUES (12, 'Terente',    'Delia',     '0752123456', 'terente.delia@email.com');
INSERT INTO proprietari_animale VALUES (13, 'Crasnaru',   'Florin',    '0753123456', 'crasnaru.florin@email.com');
INSERT INTO proprietari_animale VALUES (14, 'Spiridon',   'Vasile',    '0754123456', 'spiridon.vasile@email.com');
INSERT INTO proprietari_animale VALUES (15, 'Sucea',      'Cristiana', '0755123456', 'sucea.cristiana@email.com');
INSERT INTO proprietari_animale VALUES (16, 'Cotojman',   'Ionut',     '0756123456', 'cotojman.ionut@email.com');
INSERT INTO proprietari_animale VALUES (17, 'Marinescu',  'Raluca',    '0757123456', 'marinescu.raluca@email.com');
INSERT INTO proprietari_animale VALUES (18, 'Ionescu',    'George',    '0758123456', 'ionescu.george@email.com');
INSERT INTO proprietari_animale VALUES (19, 'Dumitrescu', 'Corina',    '0759123456', 'dumitrescu.corina@email.com');
INSERT INTO proprietari_animale VALUES (20, 'Sava',       'Loredana',  '0760123456', 'sava.loredana@email.com');
INSERT INTO proprietari_animale VALUES (21, 'Toma',       'Victor',    '0761123456', 'toma.victor@email.com');
INSERT INTO proprietari_animale VALUES (22, 'Nistor',     'Mirela',    '0762123456', 'nistor.mirela@email.com');
INSERT INTO proprietari_animale VALUES (23, 'Zamfir',     'Dragos',    '0763123456', 'zamfir.dragos@email.com');
INSERT INTO proprietari_animale VALUES (24, 'Bejan',      'Tania',     '0764123456', 'bejan.tania@email.com');
INSERT INTO proprietari_animale VALUES (25, 'Iliescu',    'Robert',    '0765123456', 'iliescu.robert@email.com');
INSERT INTO proprietari_animale VALUES (26, 'Craciun',    'Sorina',    '0766123456', 'craciun.sorina@email.com');
INSERT INTO proprietari_animale VALUES (27, 'Dobre',      'Adrian',    '0767123456', 'dobre.adrian@email.com');
INSERT INTO proprietari_animale VALUES (28, 'Neagu',      'Patricia',  '0768123456', 'neagu.patricia@email.com');
INSERT INTO proprietari_animale VALUES (29, 'Panturu',    'Calin',     '0769123456', 'panturu.calin@email.com');
INSERT INTO proprietari_animale VALUES (30, 'Filip',      'Raluca',    '0770123456', 'filip.raluca@email.com');
INSERT INTO proprietari_animale VALUES (31, 'Lupu',       'Sabin',     '0771123456', 'lupu.sabin@email.com');
INSERT INTO proprietari_animale VALUES (32, 'Pop',        'Ana-Maria', '0772123456', 'pop.anamaria@email.com');
INSERT INTO proprietari_animale VALUES (33, 'Barbu',      'Andrei',    '0773123456', 'barbu.andrei@email.com');
INSERT INTO proprietari_animale VALUES (34, 'Coltea',     'Mihaela',   '0774123456', 'coltea.mihaela@email.com');
INSERT INTO proprietari_animale VALUES (35, 'Matei',      'Florin',    '0775123456', 'matei.florin@email.com');
INSERT INTO proprietari_animale VALUES (36, 'Preda',      'Simona',    '0776123456', 'preda.simona@email.com');
INSERT INTO proprietari_animale VALUES (37, 'Dancu',      'Paul',      '0777123456', 'dancu.paul@email.com');
INSERT INTO proprietari_animale VALUES (38, 'Moldovan',   'Cristina',  '0778123456', 'moldovan.cristina@email.com');
INSERT INTO proprietari_animale VALUES (39, 'Radu',       'Laurentiu', '0779123456', 'radu.laurentiu@email.com');
INSERT INTO proprietari_animale VALUES (40, 'Anghel',     'Daria',     '0780123456', 'anghel.daria@email.com');
INSERT INTO proprietari_animale VALUES (41, 'Mihaila',    'Sergiu',    '0781123456', 'mihaila.sergiu@email.com');
INSERT INTO proprietari_animale VALUES (42, 'Balan',      'Ioana',     '0782123456', 'balan.ioana@email.com');
INSERT INTO proprietari_animale VALUES (43, 'Enache',     'Tudor',     '0783123456', 'enache.tudor@email.com');
INSERT INTO proprietari_animale VALUES (44, 'Paun',       'Gabriela',  '0784123456', 'paun.gabriela@email.com');
INSERT INTO proprietari_animale VALUES (45, 'Oancea',     'Rares',     '0785123456', 'oancea.rares@email.com');
INSERT INTO proprietari_animale VALUES (46, 'Stanca',     'Bianca',    '0786123456', 'stanca.bianca@email.com');
INSERT INTO proprietari_animale VALUES (47, 'Mateescu',   'Tiberiu',   '0787123456', 'mateescu.tiberiu@email.com');
INSERT INTO proprietari_animale VALUES (48, 'Burcea',     'Andreea',   '0788123456', 'burcea.andreea@email.com');
INSERT INTO proprietari_animale VALUES (49, 'Serban',     'Eduard',    '0789123456', 'serban.eduard@email.com');
INSERT INTO proprietari_animale VALUES (50, 'Antonescu',  'Oana',      '0790123456', 'antonescu.oana@email.com');
INSERT INTO proprietari_animale VALUES (51, 'Moraru',     'Alexandra', '0791123456', 'moraru.alexandra@email.com');
INSERT INTO proprietari_animale VALUES (52, 'Stancu',     'Bogdan',    '0792123456', 'stancu.bogdan@email.com');
INSERT INTO proprietari_animale VALUES (53, 'Ion',        'Carmen',    '0793123456', 'ion.carmen@email.com');
INSERT INTO proprietari_animale VALUES (54, 'Carstea',    'Mihai',     '0794123456', 'carstea.mihai@email.com');
INSERT INTO proprietari_animale VALUES (55, 'Negrea',     'Elena',     '0795123456', 'negrea.elena@email.com');
INSERT INTO proprietari_animale VALUES (56, 'Costea',     'Dorin',     '0796123456', 'costea.dorin@email.com');
INSERT INTO proprietari_animale VALUES (57, 'Zaharia',    'Ilinca',    '0797123456', 'zaharia.ilinca@email.com');
INSERT INTO proprietari_animale VALUES (58, 'Tudor',      'Sebastian', '0798123456', 'tudor.sebastian@email.com');
INSERT INTO proprietari_animale VALUES (59, 'Cornea',     'Nicoleta',  '0799123456', 'cornea.nicoleta@email.com');
INSERT INTO proprietari_animale VALUES (60, 'Vasilescu',  'Claudiu',   '0700123456', 'vasilescu.claudiu@email.com');
INSERT INTO proprietari_animale VALUES (61, 'Rosu',       'Denisa',    '0701123456', 'rosu.denisa@email.com');
INSERT INTO proprietari_animale VALUES (62, 'Fodor',      'Robert',    '0702123456', 'fodor.robert@email.com');
INSERT INTO proprietari_animale VALUES (63, 'Pavel',      'Irina',     '0703123456', 'pavel.irina@email.com');
INSERT INTO proprietari_animale VALUES (64, 'Cernat',     'Octavian',  '0704123456', 'cernat.octavian@email.com');
INSERT INTO proprietari_animale VALUES (65, 'Darie',      'Maria',     '0705123456', 'darie.maria@email.com');
INSERT INTO proprietari_animale VALUES (66, 'Popescu',    'Daniel',    '0706123456', 'popescu.daniel@email.com');

-- Pacienti
INSERT INTO pacienti VALUES (1,  'Max',     'Caine',  'Golden Retriever',        3,  1);
INSERT INTO pacienti VALUES (2,  'Bella',   'Pisica', 'Siamese',                 1,  2);
INSERT INTO pacienti VALUES (3,  'Rex',     'Caine',  'Maidanez',                5,  3);
INSERT INTO pacienti VALUES (4,  'Luna',    'Pisica', 'British',                 8,  4);
INSERT INTO pacienti VALUES (5,  'Charlie', 'Caine',  'Labrador',                10, 5);
INSERT INTO pacienti VALUES (6,  'Botic',   'Pisica', 'Maidanez',                3,  6);
INSERT INTO pacienti VALUES (7,  'Bunny',   'Iepure', 'Belier',                  2,  7);
INSERT INTO pacienti VALUES (8,  'Simba',   'Pisica', 'Maine Coon',              4,  8);
INSERT INTO pacienti VALUES (9,  'Oscar',   'Caine',  'Bulldog',                 7,  9);
INSERT INTO pacienti VALUES (10, 'Cleo',    'Pisica', 'Bengaleza',               1,  10);
INSERT INTO pacienti VALUES (11, 'Rocky',   'Caine',  'Doberman',                9,  11);
INSERT INTO pacienti VALUES (12, 'Milo',    'Iepure', 'Angora',                  1,  12);
INSERT INTO pacienti VALUES (13, 'Chloe',   'Pisica', 'Himalayan',               6,  13);
INSERT INTO pacienti VALUES (14, 'Bobby',   'Caine',  'Bichon',                  3,  14);
INSERT INTO pacienti VALUES (15, 'Norocel', 'Pisica', 'Maidanez',                2,  15);
INSERT INTO pacienti VALUES (16, 'Shadow',  'Caine',  'Husky',                   3,  15);
INSERT INTO pacienti VALUES (17, 'Misty',   'Pisica', 'Norvegiana',              2,  15);
INSERT INTO pacienti VALUES (18, 'Zorro',   'Caine',  'Beagle',                  4,  16);
INSERT INTO pacienti VALUES (19, 'Nala',    'Pisica', 'Ragdoll',                 3,  17);
INSERT INTO pacienti VALUES (20, 'Thor',    'Caine',  'Ciobanesc German',        6,  18);
INSERT INTO pacienti VALUES (21, 'Pixie',   'Pisica', 'Scottish Fold',           2,  19);
INSERT INTO pacienti VALUES (22, 'Bolt',    'Caine',  'Whippet',                 5,  20);
INSERT INTO pacienti VALUES (23, 'Pufi',    'Iepure', 'Pitic Olandez',           1,  21);
INSERT INTO pacienti VALUES (24, 'Loki',    'Caine',  'Cocker Spaniel',          7,  22);
INSERT INTO pacienti VALUES (25, 'Sasha',   'Pisica', 'Persana',                 4,  23);
INSERT INTO pacienti VALUES (26, 'Zeus',    'Caine',  'Rottweiler',              8,  24);
INSERT INTO pacienti VALUES (27, 'Mango',   'Pisica', 'Europeana',               2,  25);
INSERT INTO pacienti VALUES (28, 'Foxy',    'Caine',  'Shiba Inu',               3,  26);
INSERT INTO pacienti VALUES (29, 'Lily',    'Pisica', 'Sfinx',                   5,  27);
INSERT INTO pacienti VALUES (30, 'King',    'Caine',  'Malamut de Alaska',       4,  28);
INSERT INTO pacienti VALUES (31, 'Coco',    'Pisica', 'Chartreux',               6,  29);
INSERT INTO pacienti VALUES (32, 'Ralf',    'Caine',  'Teckel',                  9,  30);
INSERT INTO pacienti VALUES (33, 'Zoe',     'Pisica', 'Birmaneза',               3,  31);
INSERT INTO pacienti VALUES (34, 'Bruno',   'Caine',  'Boxer',                   5,  32);
INSERT INTO pacienti VALUES (35, 'Mia',     'Pisica', 'Exotic Shorthair',        1,  33);
INSERT INTO pacienti VALUES (36, 'Aron',    'Caine',  'Collie',                  10, 34);
INSERT INTO pacienti VALUES (37, 'Lola',    'Pisica', 'Siameza',                 7,  35);
INSERT INTO pacienti VALUES (38, 'Snow',    'Iepure', 'Belier Pitic',            2,  36);
INSERT INTO pacienti VALUES (39, 'Diesel',  'Caine',  'Shar Pei',               6,  37);
INSERT INTO pacienti VALUES (40, 'Iris',    'Pisica', 'Norvegiana de Padure',    4,  38);
INSERT INTO pacienti VALUES (41, 'Tyson',   'Caine',  'Amstaff',                 5,  39);
INSERT INTO pacienti VALUES (42, 'Minnie',  'Pisica', 'Maine Coon',              3,  40);
INSERT INTO pacienti VALUES (43, 'Hera',    'Caine',  'Samoyed',                 4,  41);
INSERT INTO pacienti VALUES (44, 'Nico',    'Pisica', 'Europeana Tigrata',       2,  42);
INSERT INTO pacienti VALUES (45, 'Rocco',   'Caine',  'Bull Terrier',            7,  43);
INSERT INTO pacienti VALUES (46, 'Fifi',    'Iepure', 'Angora Pitic',            1,  44);
INSERT INTO pacienti VALUES (47, 'Buddy',   'Caine',  'Cavalier King Charles',   6,  45);
INSERT INTO pacienti VALUES (48, 'Ginger',  'Pisica', 'Calico',                  5,  46);
INSERT INTO pacienti VALUES (49, 'Spike',   'Caine',  'Dalmatian',               8,  47);
INSERT INTO pacienti VALUES (50, 'Panda',   'Pisica', 'British Shorthair',       4,  48);
INSERT INTO pacienti VALUES (51, 'Hugo',    'Caine',  'Bordeaux Mastiff',        9,  49);
INSERT INTO pacienti VALUES (52, 'Nina',    'Pisica', 'Turkish Van',             3,  50);
INSERT INTO pacienti VALUES (53, 'Kira',    'Caine',  'Pudel',                   5,  51);
INSERT INTO pacienti VALUES (54, 'Tara',    'Pisica', 'Bombay',                  2,  52);
INSERT INTO pacienti VALUES (55, 'Axel',    'Caine',  'Retriever Auriu',         4,  53);
INSERT INTO pacienti VALUES (56, 'Ruby',    'Pisica', 'Russian Blue',            6,  54);
INSERT INTO pacienti VALUES (57, 'Odin',    'Caine',  'Husky Siberian',          3,  55);
INSERT INTO pacienti VALUES (58, 'Pepper',  'Pisica', 'Europeana Alb-Negru',    1,  56);
INSERT INTO pacienti VALUES (59, 'Fluffy',  'Iepure', 'Rex',                     2,  57);
INSERT INTO pacienti VALUES (60, 'Sam',     'Caine',  'Bichon Havanez',          7,  58);
INSERT INTO pacienti VALUES (61, 'Arya',    'Pisica', 'Siamese Seal Point',      5,  59);
INSERT INTO pacienti VALUES (62, 'Mack',    'Caine',  'Ciobanesc Belgian',       6,  60);
INSERT INTO pacienti VALUES (63, 'Sisi',    'Pisica', 'Persana Alba',            8,  61);
INSERT INTO pacienti VALUES (64, 'Leo',     'Caine',  'Pug',                     4,  62);
INSERT INTO pacienti VALUES (65, 'Gigi',    'Pisica', 'Europeana Tricolor',      2,  63);
INSERT INTO pacienti VALUES (66, 'Cookie',  'Caine',  'Cocker American',         5,  64);
INSERT INTO pacienti VALUES (67, 'Biscuit', 'Iepure', 'Olandez Alb-Negru',      3,  65);
INSERT INTO pacienti VALUES (68, 'Whiskey', 'Caine',  'Setter Irlandez',         4,  66);

-- Veterinari
INSERT INTO dr_veterinari VALUES (1, 'Dr.Alexandru');
INSERT INTO dr_veterinari VALUES (2, 'Dr.Monica');
INSERT INTO dr_veterinari VALUES (3, 'Dr.Edi');

-- Servicii
INSERT INTO servicii VALUES (1,  'Consultatie generala',  100.00);
INSERT INTO servicii VALUES (2,  'Vaccinare antirabica',   50.00);
INSERT INTO servicii VALUES (3,  'Deparazitare interna',   70.00);
INSERT INTO servicii VALUES (4,  'Sterilizare caine',     700.00);
INSERT INTO servicii VALUES (5,  'Sterilizare pisica',    500.00);
INSERT INTO servicii VALUES (6,  'Chirurgie veterinara',  800.00);
INSERT INTO servicii VALUES (7,  'Ecografie veterinara',  200.00);
INSERT INTO servicii VALUES (8,  'Radiografie veterinara',150.00);
INSERT INTO servicii VALUES (9,  'Examen bacteriologic',  300.00);
INSERT INTO servicii VALUES (10, 'Microcipare',            90.00);

-- Programari
INSERT INTO programari VALUES (1,  1,  TO_DATE('2025-01-10','YYYY-MM-DD'), '10:00', 1, 1);
INSERT INTO programari VALUES (2,  2,  TO_DATE('2025-01-10','YYYY-MM-DD'), '11:30', 2, 3);
INSERT INTO programari VALUES (3,  3,  TO_DATE('2025-01-10','YYYY-MM-DD'), '13:00', 2, 2);
INSERT INTO programari VALUES (4,  4,  TO_DATE('2025-01-10','YYYY-MM-DD'), '15:00', 1, 5);
INSERT INTO programari VALUES (5,  5,  TO_DATE('2025-01-10','YYYY-MM-DD'), '18:30', 2, 4);
INSERT INTO programari VALUES (6,  6,  TO_DATE('2025-01-11','YYYY-MM-DD'), '10:30', 3, 2);
INSERT INTO programari VALUES (7,  7,  TO_DATE('2025-01-11','YYYY-MM-DD'), '12:00', 3, 8);
INSERT INTO programari VALUES (8,  8,  TO_DATE('2025-01-11','YYYY-MM-DD'), '12:30', 3, 5);
INSERT INTO programari VALUES (9,  9,  TO_DATE('2025-01-11','YYYY-MM-DD'), '16:30', 2, 8);
INSERT INTO programari VALUES (10, 10, TO_DATE('2025-01-11','YYYY-MM-DD'), '17:00', 2, 7);
INSERT INTO programari VALUES (11, 11, TO_DATE('2025-01-11','YYYY-MM-DD'), '17:30', 2, 9);
INSERT INTO programari VALUES (12, 12, TO_DATE('2025-01-12','YYYY-MM-DD'), '09:30', 1, 8);
INSERT INTO programari VALUES (13, 13, TO_DATE('2025-01-12','YYYY-MM-DD'), '10:30', 1, 3);
INSERT INTO programari VALUES (14, 14, TO_DATE('2025-01-12','YYYY-MM-DD'), '12:45', 2, 4);
INSERT INTO programari VALUES (15, 15, TO_DATE('2025-01-12','YYYY-MM-DD'), '14:00', 1, 5);
INSERT INTO programari VALUES (16, 16, TO_DATE('2025-01-12','YYYY-MM-DD'), '16:00', 1, 6);
INSERT INTO programari VALUES (17, 17, TO_DATE('2025-01-12','YYYY-MM-DD'), '17:00', 3, 7);
INSERT INTO programari VALUES (18, 18, TO_DATE('2025-01-13','YYYY-MM-DD'), '09:00', 1, 1);
INSERT INTO programari VALUES (19, 19, TO_DATE('2025-01-13','YYYY-MM-DD'), '10:15', 2, 4);
INSERT INTO programari VALUES (20, 20, TO_DATE('2025-01-13','YYYY-MM-DD'), '11:45', 3, 6);
INSERT INTO programari VALUES (21, 21, TO_DATE('2025-01-13','YYYY-MM-DD'), '13:00', 1, 7);
INSERT INTO programari VALUES (22, 22, TO_DATE('2025-01-13','YYYY-MM-DD'), '14:30', 2, 2);
INSERT INTO programari VALUES (23, 23, TO_DATE('2025-01-13','YYYY-MM-DD'), '15:50', 3, 9);
INSERT INTO programari VALUES (24, 24, TO_DATE('2025-01-14','YYYY-MM-DD'), '09:20', 1, 3);
INSERT INTO programari VALUES (25, 25, TO_DATE('2025-01-14','YYYY-MM-DD'), '10:40', 3, 10);
INSERT INTO programari VALUES (26, 26, TO_DATE('2025-01-14','YYYY-MM-DD'), '12:00', 2, 1);
INSERT INTO programari VALUES (27, 27, TO_DATE('2025-01-14','YYYY-MM-DD'), '13:30', 1, 5);
INSERT INTO programari VALUES (28, 28, TO_DATE('2025-01-14','YYYY-MM-DD'), '15:00', 2, 8);
INSERT INTO programari VALUES (29, 29, TO_DATE('2025-01-15','YYYY-MM-DD'), '09:00', 3, 7);
INSERT INTO programari VALUES (30, 30, TO_DATE('2025-01-15','YYYY-MM-DD'), '10:10', 1, 2);
INSERT INTO programari VALUES (31, 31, TO_DATE('2025-01-15','YYYY-MM-DD'), '11:40', 2, 6);
INSERT INTO programari VALUES (32, 32, TO_DATE('2025-01-15','YYYY-MM-DD'), '13:05', 3, 4);
INSERT INTO programari VALUES (33, 33, TO_DATE('2025-01-15','YYYY-MM-DD'), '14:20', 1, 9);
INSERT INTO programari VALUES (34, 34, TO_DATE('2025-01-15','YYYY-MM-DD'), '15:45', 3, 5);
INSERT INTO programari VALUES (35, 35, TO_DATE('2025-01-16','YYYY-MM-DD'), '09:00', 2, 1);
INSERT INTO programari VALUES (36, 36, TO_DATE('2025-01-16','YYYY-MM-DD'), '10:25', 3, 7);
INSERT INTO programari VALUES (37, 37, TO_DATE('2025-01-16','YYYY-MM-DD'), '11:50', 2, 10);
INSERT INTO programari VALUES (38, 38, TO_DATE('2025-01-16','YYYY-MM-DD'), '13:15', 1, 3);
INSERT INTO programari VALUES (39, 39, TO_DATE('2025-01-16','YYYY-MM-DD'), '14:30', 3, 8);
INSERT INTO programari VALUES (40, 40, TO_DATE('2025-01-17','YYYY-MM-DD'), '09:30', 2, 5);
INSERT INTO programari VALUES (41, 41, TO_DATE('2025-01-17','YYYY-MM-DD'), '10:45', 1, 4);
INSERT INTO programari VALUES (42, 42, TO_DATE('2025-01-17','YYYY-MM-DD'), '12:00', 1, 2);
INSERT INTO programari VALUES (43, 43, TO_DATE('2025-01-17','YYYY-MM-DD'), '13:30', 3, 7);
INSERT INTO programari VALUES (44, 44, TO_DATE('2025-01-17','YYYY-MM-DD'), '15:00', 2, 6);
INSERT INTO programari VALUES (45, 45, TO_DATE('2025-01-18','YYYY-MM-DD'), '10:00', 3, 9);
INSERT INTO programari VALUES (46, 46, TO_DATE('2025-01-18','YYYY-MM-DD'), '11:15', 1, 8);
INSERT INTO programari VALUES (47, 47, TO_DATE('2025-01-18','YYYY-MM-DD'), '12:40', 2, 10);
INSERT INTO programari VALUES (48, 48, TO_DATE('2025-01-18','YYYY-MM-DD'), '14:00', 3, 3);
INSERT INTO programari VALUES (49, 49, TO_DATE('2025-01-18','YYYY-MM-DD'), '15:30', 1, 6);
INSERT INTO programari VALUES (50, 50, TO_DATE('2025-01-18','YYYY-MM-DD'), '16:45', 2, 1);
INSERT INTO programari VALUES (51, 51, TO_DATE('2025-01-19','YYYY-MM-DD'), '09:00', 1, 5);
INSERT INTO programari VALUES (52, 52, TO_DATE('2025-01-19','YYYY-MM-DD'), '10:20', 2, 8);
INSERT INTO programari VALUES (53, 53, TO_DATE('2025-01-19','YYYY-MM-DD'), '11:40', 3, 4);
INSERT INTO programari VALUES (54, 54, TO_DATE('2025-01-19','YYYY-MM-DD'), '13:10', 1, 2);
INSERT INTO programari VALUES (55, 55, TO_DATE('2025-01-19','YYYY-MM-DD'), '14:30', 2, 7);
INSERT INTO programari VALUES (56, 56, TO_DATE('2025-01-20','YYYY-MM-DD'), '09:15', 3, 10);
INSERT INTO programari VALUES (57, 57, TO_DATE('2025-01-20','YYYY-MM-DD'), '10:30', 1, 9);
INSERT INTO programari VALUES (58, 58, TO_DATE('2025-01-20','YYYY-MM-DD'), '11:45', 2, 3);
INSERT INTO programari VALUES (59, 59, TO_DATE('2025-01-20','YYYY-MM-DD'), '13:00', 3, 1);
INSERT INTO programari VALUES (60, 60, TO_DATE('2025-01-20','YYYY-MM-DD'), '14:20', 1, 6);
INSERT INTO programari VALUES (61, 61, TO_DATE('2025-01-21','YYYY-MM-DD'), '09:00', 2, 4);
INSERT INTO programari VALUES (62, 62, TO_DATE('2025-01-21','YYYY-MM-DD'), '10:15', 3, 5);
INSERT INTO programari VALUES (63, 63, TO_DATE('2025-01-21','YYYY-MM-DD'), '11:30', 1, 8);
INSERT INTO programari VALUES (64, 64, TO_DATE('2025-01-21','YYYY-MM-DD'), '12:45', 2, 2);
INSERT INTO programari VALUES (65, 65, TO_DATE('2025-01-21','YYYY-MM-DD'), '14:00', 3, 7);
INSERT INTO programari VALUES (66, 66, TO_DATE('2025-01-22','YYYY-MM-DD'), '09:30', 1, 10);
INSERT INTO programari VALUES (67, 67, TO_DATE('2025-01-22','YYYY-MM-DD'), '10:45', 2, 1);
INSERT INTO programari VALUES (68, 68, TO_DATE('2025-01-22','YYYY-MM-DD'), '12:00', 3, 6);

COMMIT;


-- =============================================================================
-- 3. BLOCURI PL/SQL — STRUCTURI DE CONTROL
-- =============================================================================

-- 1. Clasificarea varstei pacientilor: pui / adult
DECLARE
    v_id       pacienti.id_pacient%TYPE := &id_pacient;
    v_nume     pacienti.nume%TYPE;
    v_varsta   pacienti.varsta%TYPE;
    v_categorie VARCHAR2(20);
BEGIN
    SELECT nume, varsta INTO v_nume, v_varsta
    FROM pacienti WHERE id_pacient = v_id;

    IF v_varsta < 3 THEN v_categorie := 'pui';
    ELSE               v_categorie := 'adult';
    END IF;

    DBMS_OUTPUT.PUT_LINE(v_id || ' Pacientul ' || v_nume || ' este ' || v_categorie);
END;
/

-- 2. Categoria serviciilor in functie de cost (LOOP + CASE)
DECLARE
    v_descriere servicii.descriere%TYPE;
    v_cost      servicii.costul%TYPE;
    v_tip       VARCHAR2(20);
    i           NUMBER := 1;
BEGIN
    LOOP
        SELECT descriere, costul INTO v_descriere, v_cost
        FROM servicii WHERE id_serviciu = i;

        CASE
            WHEN v_cost < 400              THEN v_tip := 'ieftin';
            WHEN v_cost BETWEEN 400 AND 700 THEN v_tip := 'mediu';
            WHEN v_cost > 700              THEN v_tip := 'scump';
        END CASE;

        DBMS_OUTPUT.PUT_LINE('Serviciul "' || v_descriere || '" costa ' || v_cost || ' lei (' || v_tip || ')');
        i := i + 1;
        EXIT WHEN i > 9;
    END LOOP;
END;
/

-- 3. Parcurgerea programarilor cu FOR (pacient + veterinar + data)
DECLARE
    v_id_programare  programari.id_programare%TYPE;
    v_nume_pacient   pacienti.nume%TYPE;
    v_nume_veterinar dr_veterinari.nume%TYPE;
    v_data_prog      programari.data_programarii%TYPE;
BEGIN
    FOR i IN 1..60 LOOP
        SELECT p.id_programare, pa.nume, d.nume, p.data_programarii
        INTO   v_id_programare, v_nume_pacient, v_nume_veterinar, v_data_prog
        FROM   programari p, pacienti pa, dr_veterinari d
        WHERE  pa.id_pacient  = p.id_pacient
          AND  d.id_veterinar = p.id_veterinar
          AND  p.id_programare = i;

        DBMS_OUTPUT.PUT_LINE('Programare ' || v_id_programare ||
            ': pacient ' || v_nume_pacient ||
            ', veterinar ' || v_nume_veterinar ||
            ', data ' || TO_CHAR(v_data_prog, 'DD-MM-YYYY'));
    END LOOP;
END;
/

-- 4. Numarul de programari pe veterinar (WHILE)
DECLARE
    v_veterinar  dr_veterinari.id_veterinar%TYPE := &a;
    v_programari NUMBER := 0;
    v_count      NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM programari WHERE id_veterinar = v_veterinar;

    WHILE v_count > 0 LOOP
        v_programari := v_programari + 1;
        v_count      := v_count - 1;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Doctorul cu id ' || v_veterinar || ' are ' || v_programari || ' programari.');
END;
/

-- 5. Verificarea daca un pacient este programat (IF / ELSIF)
DECLARE
    v_id_pacient pacienti.id_pacient%TYPE := &a;
    v_nume       pacienti.nume%TYPE;
    v_nr_prog    NUMBER;
BEGIN
    SELECT nume INTO v_nume FROM pacienti WHERE id_pacient = v_id_pacient;
    SELECT COUNT(*) INTO v_nr_prog FROM programari WHERE id_pacient = v_id_pacient;

    IF    v_nr_prog = 0 THEN DBMS_OUTPUT.PUT_LINE('Pacientul ' || v_nume || ' nu este programat.');
    ELSIF v_nr_prog = 1 THEN DBMS_OUTPUT.PUT_LINE('Pacientul ' || v_nume || ' are o singura programare.');
    ELSE                     DBMS_OUTPUT.PUT_LINE('Pacientul ' || v_nume || ' are ' || v_nr_prog || ' programari.');
    END IF;
END;
/


-- =============================================================================
-- 4. CURSORI
-- =============================================================================

-- 1. Pacient: nume, specie, varsta, proprietar, telefon
SET SERVEROUTPUT ON;
DECLARE
    CURSOR C IS
        SELECT a.nume, a.specie, a.varsta, p.nume, p.prenume, p.telefon
        FROM pacienti a, proprietari_animale p
        WHERE a.id_proprietar = p.id_proprietar;
BEGIN
    FOR v IN C LOOP
        DBMS_OUTPUT.PUT_LINE('Pacient: ' || v.nume || ' ' || v.specie || ' ' ||
            v.varsta || ' ani, proprietar: ' || v.nume || ' ' || v.prenume ||
            ', telefon: ' || v.telefon);
    END LOOP;
END;
/

-- 2. Programari: id, data, pacient, veterinar, serviciu (ordonate dupa data)
DECLARE
    CURSOR C IS
        SELECT pr.id_programare, pr.data_programarii, pa.nume AS nume_pacient,
               d.nume AS nume_doctor, s.descriere
        FROM programari pr, pacienti pa, dr_veterinari d, servicii s
        WHERE pr.id_pacient   = pa.id_pacient
          AND pr.id_veterinar = d.id_veterinar
          AND pr.id_serviciu  = s.id_serviciu
        ORDER BY pr.data_programarii;
BEGIN
    FOR v IN C LOOP
        DBMS_OUTPUT.PUT_LINE('Programare ' || v.id_programare || ', ' ||
            TO_CHAR(v.data_programarii, 'DD-MM-YYYY') ||
            ', Pacient: '     || v.nume_pacient ||
            ', Veterinar: '   || v.nume_doctor  ||
            ', Serviciu: '    || v.descriere);
    END LOOP;
END;
/

-- 3. Numarul de programari per serviciu
DECLARE
    CURSOR C IS
        SELECT s.descriere, COUNT(p.id_programare) AS nr_programari
        FROM programari p, servicii s
        WHERE p.id_serviciu = s.id_serviciu
        GROUP BY s.descriere
        ORDER BY nr_programari DESC;
BEGIN
    FOR v IN C LOOP
        DBMS_OUTPUT.PUT_LINE(v.descriere || ' - ' || v.nr_programari || ' programari');
    END LOOP;
END;
/

-- 4. Top 3 servicii per specie
DECLARE
    CURSOR C IS SELECT DISTINCT specie FROM pacienti;
BEGIN
    FOR v IN C LOOP
        FOR i IN (
            SELECT pa.specie, s.descriere, COUNT(*) AS nr_programari
            FROM   programari p, pacienti pa, servicii s
            WHERE  pa.id_pacient  = p.id_pacient
              AND  s.id_serviciu  = p.id_serviciu
              AND  pa.specie      = v.specie
            GROUP BY pa.specie, s.descriere
            ORDER BY nr_programari DESC
            FETCH FIRST 3 ROWS ONLY
        ) LOOP
            DBMS_OUTPUT.PUT_LINE(i.specie || ' | ' || i.descriere || ' - ' || i.nr_programari || ' programari');
        END LOOP;
    END LOOP;
END;
/


-- =============================================================================
-- 5. EXCEPTII
-- =============================================================================

-- 1. Date proprietar + pacient (NO_DATA_FOUND / OTHERS)
DECLARE
    v_id_proprietar proprietari_animale.id_proprietar%TYPE := &a;
    v_nume_pacient  pacienti.nume%TYPE;
    v_specie        pacienti.specie%TYPE;
    v_varsta        pacienti.varsta%TYPE;
    v_nume_prop     proprietari_animale.nume%TYPE;
    v_telefon       proprietari_animale.telefon%TYPE;
BEGIN
    SELECT a.nume, a.specie, a.varsta, p.nume, p.telefon
    INTO   v_nume_pacient, v_specie, v_varsta, v_nume_prop, v_telefon
    FROM   pacienti a, proprietari_animale p
    WHERE  a.id_proprietar = v_id_proprietar
      AND  p.id_proprietar = v_id_proprietar;

    DBMS_OUTPUT.PUT_LINE('Pacient: ' || v_nume_pacient || ' ' || v_specie ||
        ' ' || v_varsta || ' ani, proprietar: ' || v_nume_prop || ', telefon: ' || v_telefon);
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('Acest pacient nu exista');
    WHEN OTHERS        THEN DBMS_OUTPUT.PUT_LINE('Alta eroare');
END;
/

-- 2. Veterinar: nume + numar programari (exceptie custom)
DECLARE
    v_id_veterinar   dr_veterinari.id_veterinar%TYPE := &a;
    v_nume           dr_veterinari.nume%TYPE;
    numar_programari NUMBER;
    nu_exista_prog   EXCEPTION;
BEGIN
    SELECT nume INTO v_nume FROM dr_veterinari WHERE id_veterinar = v_id_veterinar;
    SELECT COUNT(*) INTO numar_programari FROM programari WHERE id_veterinar = v_id_veterinar;

    IF numar_programari > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Veterinar ' || v_nume || ' are ' || numar_programari || ' programari');
    ELSE
        RAISE nu_exista_prog;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('Nu exista acest doctor');
    WHEN nu_exista_prog THEN DBMS_OUTPUT.PUT_LINE('Nu sunt programari pentru acest doctor');
END;
/

-- 3. Detalii programare dupa id
DECLARE
    v_id_programare      programari.id_programare%TYPE := &a;
    v_data_prog          programari.data_programarii%TYPE;
    v_nume_pacient       pacienti.nume%TYPE;
    v_nume_doctor        dr_veterinari.nume%TYPE;
    v_descriere_serviciu servicii.descriere%TYPE;
BEGIN
    SELECT pr.id_programare, pr.data_programarii, pa.nume, d.nume, s.descriere
    INTO   v_id_programare, v_data_prog, v_nume_pacient, v_nume_doctor, v_descriere_serviciu
    FROM   programari pr, pacienti pa, dr_veterinari d, servicii s
    WHERE  pr.id_programare = v_id_programare
      AND  pr.id_pacient    = pa.id_pacient
      AND  pr.id_veterinar  = d.id_veterinar
      AND  pr.id_serviciu   = s.id_serviciu;

    DBMS_OUTPUT.PUT_LINE('Programare ' || v_id_programare || ', ' ||
        TO_CHAR(v_data_prog, 'DD-MM-YYYY') ||
        ', Pacient: '   || v_nume_pacient ||
        ', Veterinar: ' || v_nume_doctor  ||
        ', Serviciu: '  || v_descriere_serviciu);
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('Nu exista programarea');
    WHEN OTHERS        THEN DBMS_OUTPUT.PUT_LINE('Alta eroare');
END;
/

-- 4. Serviciu unic per specie (TOO_MANY_ROWS)
DECLARE
    v_specie             pacienti.specie%TYPE := 'Pisica';
    v_descriere_serviciu servicii.descriere%TYPE;
    numar_programari     NUMBER;
BEGIN
    SELECT pa.specie, s.descriere, COUNT(*)
    INTO   v_specie, v_descriere_serviciu, numar_programari
    FROM   programari p, pacienti pa, servicii s
    WHERE  pa.specie      = v_specie
      AND  p.id_pacient   = pa.id_pacient
      AND  p.id_serviciu  = s.id_serviciu
    GROUP BY pa.specie, s.descriere
    ORDER BY numar_programari DESC;

    DBMS_OUTPUT.PUT_LINE(v_specie || ' | ' || v_descriere_serviciu || ' - ' || numar_programari || ' programari');
EXCEPTION
    WHEN NO_DATA_FOUND  THEN DBMS_OUTPUT.PUT_LINE('Nu exista nicio programare pentru specia ' || v_specie);
    WHEN TOO_MANY_ROWS  THEN DBMS_OUTPUT.PUT_LINE('Exista mai multe servicii pentru specia ' || v_specie);
    WHEN OTHERS         THEN DBMS_OUTPUT.PUT_LINE('Alta eroare');
END;
/


-- =============================================================================
-- 6. FUNCTII
-- =============================================================================

-- 1. Costul unei programari
CREATE OR REPLACE FUNCTION cost_programare (p_id_programare programari.id_programare%TYPE)
RETURN NUMBER AS
    v_cost servicii.costul%TYPE;
BEGIN
    SELECT s.costul INTO v_cost
    FROM programari p, servicii s
    WHERE p.id_serviciu = s.id_serviciu AND p.id_programare = p_id_programare;
    RETURN v_cost;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RETURN NULL;
END;
/

-- Apel
DECLARE cost_prog NUMBER;
BEGIN
    cost_prog := cost_programare(35);
    IF cost_prog IS NULL THEN DBMS_OUTPUT.PUT_LINE('Programarea nu exista');
    ELSE DBMS_OUTPUT.PUT_LINE('Cost: ' || cost_prog);
    END IF;
END;
/

-- 2. Numarul de programari al unui veterinar intr-un interval de date
CREATE OR REPLACE FUNCTION nr_programari (
    p_id_veterinar dr_veterinari.id_veterinar%TYPE,
    p_data_start   IN DATE,
    p_data_end     IN DATE
) RETURN NUMBER AS
    v_programari     NUMBER;
    v_exista_doc     NUMBER;
    e_doc_inexistent EXCEPTION;
BEGIN
    SELECT COUNT(*) INTO v_exista_doc FROM dr_veterinari WHERE id_veterinar = p_id_veterinar;
    IF v_exista_doc = 0 THEN RAISE e_doc_inexistent; END IF;

    SELECT COUNT(*) INTO v_programari FROM programari
    WHERE id_veterinar = p_id_veterinar
      AND TRUNC(data_programarii) BETWEEN TRUNC(p_data_start) AND TRUNC(p_data_end);

    RETURN v_programari;
EXCEPTION
    WHEN e_doc_inexistent THEN RETURN NULL;
END;
/

-- Apel
DECLARE nr_prog NUMBER;
BEGIN
    nr_prog := nr_programari(2, DATE '2025-01-10', DATE '2025-01-13');
    IF    nr_prog IS NULL THEN DBMS_OUTPUT.PUT_LINE('Doctorul nu exista');
    ELSIF nr_prog = 0     THEN DBMS_OUTPUT.PUT_LINE('Doctorul nu are programari in perioada data');
    ELSE                       DBMS_OUTPUT.PUT_LINE('Doctorul are ' || nr_prog || ' programari in perioada data');
    END IF;
END;
/

-- 3. Varsta medie pentru o specie
CREATE OR REPLACE FUNCTION varsta_medie (p_specie pacienti.specie%TYPE)
RETURN NUMBER AS
    v_medie              NUMBER;
    v_numar              NUMBER;
    e_specie_inexistenta EXCEPTION;
BEGIN
    SELECT COUNT(*), AVG(varsta) INTO v_numar, v_medie
    FROM pacienti WHERE UPPER(specie) = UPPER(p_specie);

    IF v_numar = 0 THEN RAISE e_specie_inexistenta; END IF;
    RETURN ROUND(v_medie, 2);
EXCEPTION
    WHEN e_specie_inexistenta THEN RETURN NULL;
END;
/

-- Apel
DECLARE medie NUMBER;
BEGIN
    medie := varsta_medie('Pisica');
    IF medie IS NULL THEN DBMS_OUTPUT.PUT_LINE('Nu exista pacienti cu specia data');
    ELSE                  DBMS_OUTPUT.PUT_LINE('Varsta medie: ' || medie);
    END IF;
END;
/


-- =============================================================================
-- 7. PROCEDURI
-- =============================================================================

-- 1. Programarile dintr-o zi + total incasari
CREATE OR REPLACE PROCEDURE programari_zi (p_data IN DATE) AS
    CURSOR C (v_data DATE) IS
        SELECT p.id_programare, pa.nume AS nume_pacient, d.nume AS nume_doctor,
               s.descriere, s.costul, p.ora_programarii
        FROM programari p, pacienti pa, dr_veterinari d, servicii s
        WHERE p.id_pacient   = pa.id_pacient
          AND d.id_veterinar = p.id_veterinar
          AND s.id_serviciu  = p.id_serviciu
          AND TRUNC(p.data_programarii) = TRUNC(v_data)
        ORDER BY p.ora_programarii;
    v_total NUMBER := 0;
BEGIN
    FOR r IN C(p_data) LOOP
        DBMS_OUTPUT.PUT_LINE('ID=' || r.id_programare ||
            ' | Ora='      || r.ora_programarii ||
            ' | Pacient='  || r.nume_pacient    ||
            ' | Doctor='   || r.nume_doctor     ||
            ' | Serviciu=' || r.descriere       ||
            ' | Cost='     || r.costul);
        v_total := v_total + r.costul;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total incasari estimate: ' || v_total);
END;
/

EXECUTE programari_zi(DATE '2025-01-10');

-- 2. Modificarea pretului unui serviciu
CREATE OR REPLACE PROCEDURE modifica_pret_serviciu (
    p_id_serviciu servicii.id_serviciu%TYPE,
    p_valoare     IN NUMBER
) AS
    e_serviciu_inexistent EXCEPTION;
BEGIN
    UPDATE servicii SET costul = costul + p_valoare WHERE id_serviciu = p_id_serviciu;

    IF SQL%ROWCOUNT = 0 THEN RAISE e_serviciu_inexistent; END IF;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Serviciul ' || p_id_serviciu || ' a fost modificat cu ' || p_valoare);
EXCEPTION
    WHEN e_serviciu_inexistent THEN DBMS_OUTPUT.PUT_LINE('Nu exista serviciul cu id ' || p_id_serviciu);
END;
/

EXECUTE modifica_pret_serviciu(10, 5);

-- 3. Numarul de programari per veterinar, pe luna
CREATE OR REPLACE PROCEDURE prog_vet_pe_luna (p_an IN NUMBER) AS
    CURSOR c IS
        SELECT d.id_veterinar, d.nume AS nume_doctor,
               EXTRACT(MONTH FROM p.data_programarii) luna,
               COUNT(*) nr_programari
        FROM dr_veterinari d, programari p
        WHERE p.id_veterinar = d.id_veterinar
          AND EXTRACT(YEAR FROM p.data_programarii) = p_an
        GROUP BY d.id_veterinar, d.nume, EXTRACT(MONTH FROM p.data_programarii)
        ORDER BY d.nume, luna;

    v_vet_curent  dr_veterinari.id_veterinar%TYPE := NULL;
    v_nume_curent dr_veterinari.nume%TYPE;
BEGIN
    FOR r IN c LOOP
        IF v_vet_curent IS NULL OR v_vet_curent <> r.id_veterinar THEN
            v_vet_curent  := r.id_veterinar;
            v_nume_curent := r.nume_doctor;
            DBMS_OUTPUT.PUT_LINE('Doctor: ' || v_nume_curent || ' (id=' || v_vet_curent || ')');
        END IF;
        DBMS_OUTPUT.PUT_LINE('   Luna ' || r.luna || ': ' || r.nr_programari || ' programari');
    END LOOP;
END;
/

EXECUTE prog_vet_pe_luna(2025);
