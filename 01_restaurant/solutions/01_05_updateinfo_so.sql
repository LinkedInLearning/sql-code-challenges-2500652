-- Updaten Sie die Kontak-Informationen eines Kunden.

-- Taylor Jenkins aus 27170 6th Ave., Washington, DC,
-- ist umgezogen nach 74 Pine St., New York, NY.

/* 
SELECT CustomerID, FirstName, LastName, Address 
FROM Customers 
WHERE FirstName = 'Taylor' 
AND LastName = 'Jenkins';

UPDATE Customers 
SET Address = '74 Pine St.', 
    City = 'New York', 
    State = 'NY' 
WHERE CustomerID = 26;

SELECT * 
FROM Customers 
WHERE CustomerID = 26; */


SELECT KundenID, Vorname, Nachname, Adresse 
FROM Kunden 
WHERE Vorname = 'Taylor' 
AND Nachname = 'Jenkins';

UPDATE Kunden 
SET Adresse = '74 Pine St.', 
    Stadt = 'New York', 
    State = 'NY' 
WHERE KundenID = 26;

SELECT * 
FROM Kunden 
WHERE KundenID = 26;