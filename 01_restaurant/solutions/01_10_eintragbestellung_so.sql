-- Fuegen Sie die Bestellung einer Kundin in unsere Datenbank ein
-- und stellen Sie ihr die Gesamtkosten bereit

-- Bestellungsinformationen sind:
-- Für: Loretta Hundey, 6939 Elka Place, 
-- Im Einkaufskorb: 1 House Salad, 1 Mini Cheeseburgers, 1 Tropical Blue Smoothie,
-- Lieferdatum und Zeit: September 20, 2022, @2PM (14:00)


SELECT KundenID, Vorname, Nachname, Telefon 
FROM Kunden
WHERE Adresse = '6939 Elka Place' AND Nachname = 'Hundey';

INSERT INTO Bestellungen (KundenID, BestellungsDatum) 
VALUES (70, '2022-09-20 14:00:00');

select * from Bestellungen where KundenID = 70

SELECT * 
FROM Bestellungen 
WHERE KundenID = 70
ORDER BY BestellungsDatum DESC;

select * from Speise

INSERT INTO BestellungSpeise (BestellungsID, SpeiseID) 
VALUES(1001, (SELECT SpeiseID FROM Speise WHERE Name = 'House Salad')),
(1001, (SELECT SpeiseID FROM Speise WHERE Name = 'Mini Cheeseburgers')),
(1001, (SELECT SpeiseID FROM Speise WHERE Name = 'Tropical Blue Smoothie'));

SELECT *  
FROM Speise 
JOIN BestellungSpeise ON Speise.SpeiseID = BestellungSpeise.SpeiseID 
WHERE BestellungSpeise.BestellungsID  = 1001;


SELECT SUM(Speise.Preis) 
FROM Speise 
JOIN BestellungSpeise ON Speise.SpeiseID = BestellungSpeise.SpeiseID 
WHERE BestellungSpeise.SpeiseID = 1001;
