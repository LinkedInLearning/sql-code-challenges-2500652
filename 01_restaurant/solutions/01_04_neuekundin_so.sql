-- Fügen Sie eine Kundin dem Treueprogramm hinzu.

-- Das sind ihre Daten:
-- Anna Smith, asmith@samoca.org
-- 479 Lapis Dr., Memphis, TN
-- Telefon: (555) 555-1212; Geburtstag: Juli 21, 1973


INSERT INTO Kunden (Vorname, Nachname, Email, Adresse, Stadt, State, Telefon, Geburtstag) 
VALUES ('Anna', 'Smith', 'asmith@samoca.org', '479 Lapis Dr.', 'Memphis', 'TN', '555-555-1212', '1973-07-21');

SELECT * FROM Kunden ORDER BY KundenID DESC;

