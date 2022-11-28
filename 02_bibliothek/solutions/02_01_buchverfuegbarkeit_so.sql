-- Finden Sie heraus wie viele Kopien von 
-- „Dracula“ im Moment verfügbar sind.

/*
SELECT COUNT(Books.Title) 
FROM Books 
WHERE Books.Title = 'Dracula';

SELECT COUNT(Books.Title)
FROM Loans 
JOIN Books ON Loans.BookID = Books.BookID 
WHERE Books.Title = 'Dracula' 
  AND Loans.ReturnedDate IS NULL;

SELECT
  (SELECT COUNT(Books.Title) 
    FROM Books 
    WHERE Books.Title = 'Dracula') - 
  (SELECT COUNT(Books.Title)
    FROM Books 
    JOIN Loans ON Books.BookID = Loans.BookID 
    WHERE Books.Title = 'Dracula' 
    AND Loans.ReturnedDate IS NULL)
  AS AvailableCopies;
  */

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