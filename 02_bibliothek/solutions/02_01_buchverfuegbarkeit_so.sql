-- Finden Sie heraus wie viele Kopien von 
-- „Dracula“ im Moment verfügbar sind.


SELECT COUNT(Buecher.Titel) 
FROM Buecher 
WHERE Buecher.Titel = 'Dracula';

SELECT COUNT(Buecher.Titel)
FROM Ausleihung 
JOIN Buecher ON Ausleihung.BuchID = Buecher.BuchID 
WHERE Buecher.Titel = 'Dracula' 
  AND Ausleihung.RueckgabeDatum IS NULL;

SELECT
  (SELECT COUNT(Buecher.Titel) 
    FROM Buecher 
    WHERE Buecher.Titel = 'Dracula') - 
  (SELECT COUNT(Buecher.Titel)
    FROM Buecher 
    JOIN Ausleihung ON Buecher.BuchID = Ausleihung.BuchID 
    WHERE Buecher.Titel = 'Dracula' 
    AND Ausleihung.RueckgabeDatum IS NULL)
  AS VerfuegbareKopien;