-- Erstellen Sie eine neue Tabelle namens „Jubilaeum“ um die Antworten
-- der Kundinnen/Kunden auf unsere Einladung zu speichern.

-- Die ID einer Kundin sollte der Anzahl der Personen, 
-- die sie mitbringen will zugeordnet sein.

-- Tipp: SQLite hat zwei verschiedene Zahlen-Datentypen INTEGER und REAL.

/*
CREATE TABLE AnniversaryAttendees (
  CustomerID INTEGER,
  PartySize INTEGER
);*/

CREATE TABLE TeilnahmeJubilaeum (
  KundenID INTEGER,
  PartyGroesse INTEGER
);
