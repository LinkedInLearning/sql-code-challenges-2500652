/*Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT DishID 
FROM Dishes 
WHERE Name = 'Quinoa Salmon Salad';

SELECT * 
FROM Customers 
WHERE FirstName = 'Cleo' 
  AND LastName = 'Goldwater';

UPDATE Customers 
SET FavoriteDish = 9 
  WHERE CustomerID = 42;

UPDATE Customers 
  SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad') 
  WHERE CustomerID = 42;

SELECT Customers.FirstName, Customers.LastName, Customers.FavoriteDish, Dishes.Name 
FROM Customers 
JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID;*/


SELECT SpeiseID 
FROM Speise 
WHERE Name = 'Quinoa Salmon Salad';

SELECT * 
FROM Kunden 
WHERE Vorname = 'Cleo' 
  AND Nachname = 'Goldwater';


UPDATE Kunden 
SET LieblingsGericht = 9 
  WHERE KundenID = 42; 

/*
UPDATE Kunden 
  SET LieblingsGericht = (SELECT SpeiseID FROM Speise WHERE Name = 'Quinoa Salmon Salad') 
  WHERE KundenID = 42; MA don't like this, left out in the script*/

SELECT Kunden.Vorname, Kunden.Nachname, Kunden.LieblingsGericht, Speise.Name 
FROM Kunden 
JOIN Speise ON Kunden.LieblingsGericht = Speise.SpeiseID;