-- Entfernen Sie eine ungueltige Reservierung aus der Datenbank.

-- Ein Kunde namens Norby hat uns informiert, dass er seine Reservierung
-- für Freitag stornieren moechte. Heute ist der 24.Juli 2022.

/* 
SELECT * FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.FirstName = 'Norby'
AND Reservations.Date > '2022-07-24';

DELETE FROM Reservations WHERE ReservationID = 2000;

-- or:
UPDATE Reservations SET Date = NULL WHERE ReservationID = 2000; */

SELECT * FROM Reservierung
JOIN Kunden ON Reservierung.KundenID = Kunden.KundenID
WHERE Kunden.Vorname = 'Norby'
AND Reservierung.Datum > '2022-07-24';

DELETE FROM Reservierung WHERE ReservierungsID = 2000;

-- oder:
UPDATE Reservierung SET Datum = NULL WHERE ReservierungsID = 2000; 