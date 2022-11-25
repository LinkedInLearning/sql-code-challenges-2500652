-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

/*
SELECT Title, Barcode
FROM Books
WHERE Published BETWEEN 1890 AND 1899
AND (BookID NOT IN 
  (SELECT BookID 
  FROM Loans 
  WHERE ReturnedDate IS NULL)) 
ORDER BY Title;
*/

SELECT Titel, Barcode
FROM Buecher
WHERE Erscheinungsdatum BETWEEN 1890 AND 1899
AND (BuchID NOT IN 
  (SELECT BuchID 
  FROM Ausleihung 
  WHERE RueckgabeDatum IS NULL)) 
ORDER BY Titel;