-- Erstellen Sie eine Liste von Mitgliedern,  
-- die am seltensten Bücher ausgeliehen haben. 


SELECT COUNT(Ausleihung.AusleihID) AS AnzahlAusleihung, Mitglieder.Vorname, Mitglieder.Email
FROM Ausleihung
JOIN Mitglieder ON Ausleihung.MitgliedsID=Mitglieder.MitgliedsID
GROUP BY Ausleihung.MitgliedsID
ORDER BY AnzahlAusleihung ASC
LIMIT 15;