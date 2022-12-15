-- Erstellen Sie zwei Buchstatistiken.

-- Die erste soll zeigen wie viele Bücher pro Jahr veröffentlicht wurden. 
-- Die zweite soll zeigen, welche fünf Bücher am meisten ausgeliehen worden sind.

SELECT Erscheinungsdatum, COUNT(DISTINCT(Titel)) AS AnzahlErscheinungen 
FROM Buecher 
GROUP BY Erscheinungsdatum
ORDER BY AnzahlErscheinungen DESC;

SELECT COUNT(Ausleihung.AusleihID) AS AnzahlAusleihung, Buecher.Titel 
FROM Ausleihung 
JOIN Buecher ON Ausleihung.BuchID=Buecher.BuchID 
GROUP BY Buecher.Titel 
ORDER BY AnzahlAusleihung DESC 
LIMIT 5;