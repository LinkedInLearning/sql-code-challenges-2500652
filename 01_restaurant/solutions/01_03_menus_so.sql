/* Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

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




