-- Ertstellen Sie eine Liste von Büchern, die von 1890 bis 1899  
-- veröffentlicht wurden und im Moment ausgeliehen werden können. 

SELECT Titel, Barcode
FROM Buecher
WHERE Erscheinungsdatum BETWEEN 1890 AND 1899
AND (BuchID NOT IN 
  (SELECT BuchID 
  FROM Ausleihung 
  WHERE RueckgabeDatum IS NULL)) 
ORDER BY Titel;