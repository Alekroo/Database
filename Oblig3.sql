--Oppgave 2

--1.
SELECT * 
FROM timelistelinje
WHERE timelistenr = 3;

--2.
SELECT COUNT(timelistenr)
from timeliste;

--3.
SELECT COUNT(status)
FROM timeliste
WHERE status != 'utbetalt';

--4.
SELECT COUNT(sluttid)
from timelistelinje
WHERE starttid < '12:00:00'
AND sluttid > '12:00:00';

--5.
SELECT SUM(timeantall)
FROM timeantall
JOIN timeliste ON
timeantall.timelistenr = timeliste.timelistenr
WHERE status != 'utbetalt';

--6.
SELECT SUM(varighet)/60 as sumInH
FROM varighet
JOIN timelistelinje ON
varighet.timelistenr = timelistelinje.timelistenr
WHERE startdato < '20160801';

--7.
SELECT * 
FROM timeliste
JOIN timelistelinje ON
timeliste.timelistenr = timelistelinje.timelistenr
WHERE timelistelinje.beskrivelse LIKE '%Test%'
OR timelistelinje.beskrivelse LIKE '%test%'
OR timeliste.beskrivelse LIKE '%Test%'
OR timeliste.beskrivelse LIKE '%test%';

--8
SELECT DISTINCT timelistelinje.beskrivelse 
FROM timelistelinje
JOIN timeliste ON
timelistelinje.timelistenr = timeliste.timelistenr
WHERE status != 'utbetalt';

