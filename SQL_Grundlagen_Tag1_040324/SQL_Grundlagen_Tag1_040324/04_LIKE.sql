USE Northwind

-- LIKE - im WHERE statt Vergleichsoperator; Filtern wir nach "ungenauen" Eingaben

-- "%" => egal welches Symbol wir suchen, egal wieviel davon
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE 'B%'

-- "_" => egal welches Symbol, aber nur EINS
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '_r%'

-- "[]" => alle Symbole die in der Klammer sind, sollen gültig sein, aber nur an der einen Stelle!
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[012345]%'

-- Geht auch mit Buchstaben
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '[ABCD]%'

-- "[^]" => alles was in den Klammern vorkommt, soll nicht drankommen
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '[^ABCD]%'

-- "[x-y]" => kürzere Schreibweise zu [012345]%
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[0-5]%'

-- Sonderfälle
-- % => Prozentzeichen ausgeben lassen
SELECT * FROM Customers
WHERE CompanyName LIKE '%[%]%'

-- '' => Hochkomma ausgeben lassen
SELECT * FROM Customers
WHERE CompanyName LIKE '% '' %'