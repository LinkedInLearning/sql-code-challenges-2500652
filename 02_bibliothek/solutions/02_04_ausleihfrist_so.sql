-- Erstellen Sie eine Liste von Büchern, deren Ausleihfrist am 13. Juli 2022 endet. 
-- Diese Liste soll auch den Namen der ausleihenden Person, 
-- sowie deren Email-Adresse enthalten. 


SELECT Ausleihung.Rueckgabefrist, Buecher.Titel, Mitglieder.Vorname, Mitglieder.Email
FROM Ausleihung
JOIN Buecher ON Ausleihung.BuchID = Buecher.BuchID
JOIN Mitglieder ON Ausleihung.MitgliedsID = Mitglieder.MitgliedsID
WHERE Ausleihung.Rueckgabefrist = '2022-07-13' 
AND Ausleihung.RueckgabeDatum IS NULL;