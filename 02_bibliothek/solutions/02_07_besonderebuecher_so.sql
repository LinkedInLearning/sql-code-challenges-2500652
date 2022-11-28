-- Ertstellen Sie eine Liste von Büchern, die von 1890 bis 1899 
--  veröffentlicht wurden und im Moment ausleihbar sind.

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