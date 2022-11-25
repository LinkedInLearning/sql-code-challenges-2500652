-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

/*
SELECT Loans.DueDate, Books.Title, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
WHERE Loans.DueDate = '2022-07-13' 
AND Loans.ReturnedDate IS NULL;
*/

SELECT Ausleihung.Rueckgabefrist, Buecher.Titel, Mitglieder.Vorname, Mitglieder.Email
FROM Ausleihung
JOIN Buecher ON Ausleihung.BuchID = Buecher.BuchID
JOIN Mitglieder ON Ausleihung.MitgliedsID = Mitglieder.MitgliedsID
WHERE Ausleihung.Rueckgabefrist = '2022-07-13' 
AND Ausleihung.RueckgabeDatum IS NULL;