-- Kreieren Sie eine Liste, die verwendet wird um drei Menues zu erstellen.

-- Kreieren Sie eine Liste aller Speisen. Sortieren Sie diese nach dem Preis beginnend beim niedrigsten.
-- Kreieren Sie eine Liste von Vorspeisen und Getraenken.
-- Kreieren Sie eine Liste des ganzen Angebots ausgenommen der Getränke.
-- Die letzten beiden Menues sollen nach Gericht-Art sortiert sein.

/*
SELECT Type, Name, Price, Description 
FROM Dishes 
ORDER BY Price;

SELECT Type, Name, Price, Description 
FROM Dishes 
WHERE Type = 'Appetizer' OR Type = 'Beverage' 
ORDER BY Type;

SELECT Type, Name, Price, Description 
FROM Dishes 
WHERE Type != 'Beverage'
ORDER BY Type; */


SELECT Typ, Name, Preis, Beschreibung 
FROM Speise 
ORDER BY Preis;

SELECT Typ, Name, Preis, Beschreibung 
FROM Speise 
WHERE Typ = 'Vorspeise' OR Typ = 'Getränk' 
ORDER BY Typ;

SELECT Typ, Name, Preis, Beschreibung 
FROM Speise 
WHERE Typ != 'Getränk'
ORDER BY Typ;




