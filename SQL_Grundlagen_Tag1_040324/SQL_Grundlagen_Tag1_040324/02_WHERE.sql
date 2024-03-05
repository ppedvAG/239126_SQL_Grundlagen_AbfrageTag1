-- WHERE filter die Ergebnismenge nch einem oder mehreren Kriterien

SELECT * FROM Customers
WHERE Country = 'Germany' -- Wichtig Hochkommas weil String

-- Mit = Operator nur EXAKTE Treffer
SELECT * FROM Customers
WHERE City = 'Paris'

-- Mehrere Vergleichsoperatoren
/*
	> = größer als
	>= = größer gleich
	< = kleiner als
	<= = kleiner gleich
	= exakte Suche
	!= ungleich
	<> = ungleich
*/

SELECT * FROM Orders
WHERE Freight >= 100
ORDER BY Freight

SELECT * FROM Customers
WHERE Country != 'Germany'

-- Mehr als eine Bedingung filtern... mit AND oder OR
SELECT * FROM Customers
WHERE Country = 'France' OR Country = 'Brazil'

SELECT * FROM Customers
WHERE Country = 'France' OR
Country = 'Brazil' OR
Country = 'Austria' 

-- => IN Operator
SELECT * FROM Customers
WHERE Country IN('France', 'Brazil', 'Austria', 'Germany')

-- Frachtkosten zwischen 100 und 500
SELECT * FROM Orders
WHERE Freight >= 100 AND Freight <= 500

-- BETWEEN gibt eine Reichweite an, Grenzwerte sind mit dabei
SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 500

-- 1. Alle Datensätzen von der Tabellen Customers, wo das Land Brazilien ist
SELECT * FROM Customers
WHERE Country = 'Brazil'

-- 2. Alle Kunden aus Deutschland oder Frankreich, die aus Berlin oder Paris sind
-- Tabelle: Customers
SELECT * FROM Customers
WHERE (Country = 'Germany' OR Country = 'France') AND (City = 'Berlin' OR City = 'Paris')

-- 3. Alle Kunden die eine Fax Nummer hinterlegt haben
-- -> Customers:
SELECT * FROM Customers

SELECT Fax FROM Customers
WHERE Fax != 'NULL'

-- Lösung Nr.2
SELECT Fax FROM Customers
WHERE Fax IS NOT NULL