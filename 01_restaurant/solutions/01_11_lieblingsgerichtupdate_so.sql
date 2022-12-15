-- Updaten Sie die Informationen in der Datenbank.

-- Tragen Sie Cleo Goldwaters Lieblingsgericht 
-- als "Quinoa Salmon Salad" ein.

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


SELECT Kunden.Vorname, Kunden.Nachname, Kunden.LieblingsGericht, Speise.Name 
FROM Kunden 
JOIN Speise ON Kunden.LieblingsGericht = Speise.SpeiseID;