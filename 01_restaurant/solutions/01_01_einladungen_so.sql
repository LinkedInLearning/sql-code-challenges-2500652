-- Kreieren Sie eine Liste mit Kunden-Informationen.
-- Diese Liste soll Vornamen, Nachnamen 
-- und die E-Mail-Adresse der Kundinnen/Kunden enthalten.
-- Sortieren Sie die Liste alphabetisch nach den Nachnamen.

/*
SELECT FirstName, LastName, Email 
FROM Customers 
ORDER BY LastName;*/

SELECT Vorname, Nachname, Email 
FROM Kunden 
ORDER BY Nachname;