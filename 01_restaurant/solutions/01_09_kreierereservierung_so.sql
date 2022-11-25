-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com, (555) 555-1232)
-- for 5 people on August 12, 2022 at 6PM (18:00)

/*SELECT * 
FROM Customers 
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Customers 
(FirstName, LastName, Email, Phone) VALUES 
('Sam', 'McAdams', 'smac@kinetecoinc.com', '(555) 555-1232');

SELECT * 
FROM Customers 
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Reservations 
(CustomerID, Date, PartySize) VALUES 
(102, '2022-08-12 18:00:00', 5);

SELECT Customers.FirstName, Customers.LastName, Customers.Email, Reservations.Date, Reservations.PartySize 
FROM Customers 
JOIN Reservations ON Customers.CustomerID = Reservations.CustomerID 
WHERE Customers.Email = 'smac@kinetecoinc.com'; */

SELECT * 
FROM Kunden 
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Kunden 
(Vorname, Nachname, Email, Telefon) VALUES 
('Sam', 'McAdams', 'smac@kinetecoinc.com', '(555) 555-1232');

SELECT * 
FROM Kunden 
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Reservierung 
(KundenID, Datum, PartyGroesse) VALUES 
(102, '2022-08-12 18:00:00', 5);

SELECT Kunden.Vorname, Kunden.Nachname, Kunden.Email, Reservierung.Datum, Reservierung.PartyGroesse 
FROM Kunden 
JOIN Reservierung ON Kunden.KundenID = Reservierung.KundenID 
WHERE Kunden.Email = 'smac@kinetecoinc.com';