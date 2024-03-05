-- Übungen

-- 1. Alle ContactNames deren ContactTitle "Manager" beinhaltet
-- Tabelle: Customers
SELECT ContactName, ContactTitle FROM Customers
WHERE ContactTitle LIKE '%Manager%'

-- 2. Alle ContactTitles die als Title "Owner" haben (Tabelle Customers)
-- Lösung
SELECT ContactName, ContactTitle FROM Customers
WHERE ContactTitle LIKE '%Owner%'

-- Halbe Lösung
SELECT ContactName, ContactTitle FROM Customers
WHERE ContactTitle = 'Owner'

-- 3. Alle [Order Details] die ProductID 43 bestellt haben (28 Zeilen)
SELECT * FROM [Order Details]
WHERE ProductID = 43