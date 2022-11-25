-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

/*SELECT COUNT(Orders.orderID) as OrderCount, Customers.FirstName, Customers.LastName, Customers.Email
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY OrderCount DESC
LIMIT 15; */


SELECT COUNT(Bestellungen.BestellungsID) as AnzahlBestellungen, Kunden.Vorname, Kunden.Nachname, Kunden.Email
FROM Bestellungen
JOIN Kunden ON Bestellungen.KundenID = Kunden.KundenID
GROUP BY Bestellungen.KundenID
ORDER BY AnzahlBestellungen DESC
LIMIT 15;