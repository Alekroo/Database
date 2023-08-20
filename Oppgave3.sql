--Oppgave 3
--Timeliste
INSERT INTO timeliste
VALUES (8, 'utbetalt', '20160729', '20160810', 'Planlegging av neste trinn');

INSERT INTO timeliste (timelistenr, status, levert, beskrivelse)
VALUES (9, 'levert', '20160803', 'Detaljering av neste trinn');

INSERT INTO timeliste (timelistenr, status, beskrivelse)
VALUES (10, 'aktiv', 'Skriving av rapport');

--Timelistelinje
INSERT INTO timelistelinje 
VALUES (8, 1, '20160725', '1015', '1730', 50, 'diskusjoner');

INSERT INTO timelistelinje (timelistenr, linjenr, startdato, starttid, sluttid, beskrivelse)
VALUES (8, 2, '20160727', '1245', '1400', 'konkretisering');

INSERT INTO timelistelinje
VALUES (9, 1, '20160727', '1515', '1845', 70, 'del1');

INSERT INTO timelistelinje
VALUES (9, 2, '20160728', '1000', '1400', 35, 'del2');

INSERT INTO timelistelinje
VALUES (9, 3, '20160728', '2100', '0415', 90, 'del3');

INSERT INTO timelistelinje (timelistenr, linjenr, startdato, starttid, sluttid, beskrivelse)
VALUES (9, 4, '20160802', '1300', '1700', 'del4');

INSERT INTO timelistelinje
VALUES (10, 1, '20160803', '1050', '1610', 40, 'kap1');

INSERT INTO timelistelinje (timelistenr, linjenr, startdato, starttid, beskrivelse)
VALUES (10, 2, '20160805', '1800', 'kap2');