-- Leihen Sie die Bücher „The Picture of Dorian Gray“ 
--  und „Great Expectations“ an Jack Vaan aus. 
-- Das Ausleihdatum ist der 25. August 2022  
--  und die Ausleihfrist endet am 8. September.


  INSERT INTO Ausleihung (BuchID, MitgliedsID, AusleihDatum, Rueckgabefrist)
VALUES (
  (SELECT BuchID 
    FROM Buecher 
    WHERE Barcode = '2855934983'), 
  (SELECT MitgliedsID 
    FROM Mitglieder 
    WHERE Email = 'jvaan@wisdompets.com'),
  '2022-08-25',
  '2022-09-08');

INSERT INTO Ausleihung (BuchID, MitgliedsID, AusleihDatum, Rueckgabefrist)
VALUES (
  (SELECT BuchID 
    FROM Buecher 
    WHERE Barcode = '4043822646'), 
  (SELECT MitgliedsID 
    FROM Mitglieder 
    WHERE Email = 'jvaan@wisdompets.com'), 
  '2022-08-25', 
  '2022-09-08');

SELECT * 
FROM Ausleihung 
JOIN Buecher ON Ausleihung.BuchID = Buecher.BuchID 
WHERE MitgliedsID = (
  SELECT MitgliedsID 
  FROM Mitglieder 
  WHERE Email = 'jvaan@wisdompets.com');