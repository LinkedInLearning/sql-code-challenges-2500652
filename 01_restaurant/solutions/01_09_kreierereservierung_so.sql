-- Erstellen Sie eine Reservierung für einen Kunden, 
-- dessen Daten eventuell schon in unserer Datenbank sind - oder auch nicht.

-- Die Reservierung ist für:
-- Sam McAdams (smac@kinetecoinc.com), 5 Personen
-- August 12, 2022 @ 6PM (18:00)

SELECT * 
FROM Kunden 
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Kunden 
(Vorname, Nachname, Email, Telefon) 
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com', '(555) 555-1232');

SELECT * 
FROM Kunden 
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Reservierung 
(KundenID, Datum, PartyGroesse) VALUES 
(102, '2022-08-12 18:00:00', 5);

SELECT Kunden.Vorname, Kunden.Nachname, Kunden.Email, Reservierung.Datum, Reservierung.PartyGroesse 
FROM Kunden 
JOIN Reservierung ON Kunden.KundenID = Reservierung.KundenID 
WHERE Kunden.Email = 'smac@kinetecoinc.com';