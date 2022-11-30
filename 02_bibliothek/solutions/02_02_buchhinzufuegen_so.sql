-- Fügen Sie folgende Bücher in die Datenbank hinzu
-- und stellen diese zum Ausleihen bereit.


INSERT INTO Buecher (Titel, AutorIn, Erscheinungsdatum, Barcode)
VALUES
('Dracula', 'Bram Stoker', '1897', '4819277482'),
('Gulliver''s Travels into Several Remote Nations of the World', 'Jonathan Swift', '1729', '4899254401');

SELECT * FROM Buecher
ORDER BY BuchID DESC
LIMIT 5;