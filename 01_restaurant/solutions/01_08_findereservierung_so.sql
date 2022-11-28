-- Finden Sie die Reservierung eines Kunden, 
-- dessen Namen wir nicht genau buchstabieren können.

-- Der Name hat unter anderem folgenede Variationen:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
-- Heute ist der 14.Juni.

/* 
SELECT Customers.FirstName, Customers.LastName, Reservations.Date, Reservations.PartySize
FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.LastName LIKE 'St%'
AND PartySize = 4
ORDER BY Reservations.Date DESC; */

SELECT Kunden.Vorname, Kunden.Nachname, Reservierung.Datum, Reservierung.PartyGroesse
FROM Reservierung
JOIN Kunden ON Kunden.KundenID = Reservierung.KundenID
WHERE Kunden.Nachname LIKE 'St%'
AND PartyGroesse = 4
ORDER BY Reservierung.Datum DESC;