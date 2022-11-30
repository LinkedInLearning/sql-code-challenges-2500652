-- Erstellen Sie eine Liste von Mitgliedern,  
-- die am seltensten Bücher ausgeliehen haben. 

/*
SELECT COUNT(Loans.LoanID) AS LoanCount, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons ON Loans.PatronID=Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY LoanCount ASC
LIMIT 15;
*/

SELECT COUNT(Ausleihung.AusleihID) AS AnzahlAusleihung, Mitglieder.Vorname, Mitglieder.Email
FROM Ausleihung
JOIN Mitglieder ON Ausleihung.MitgliedsID=Mitglieder.MitgliedsID
GROUP BY Ausleihung.MitgliedsID
ORDER BY AnzahlAusleihung ASC
LIMIT 15;