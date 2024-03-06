# SQL Grundlage Abfragesprache Tag 1:

### Tag 1 Inhalt:
---
* USE Befehl
```
USE Northwind
```
---
* Select Statements
```
SELECT * FROM Customers
```
---
* DISTINCT
```
SELECT DISTINCT Country FROM Customers
```
---
* Order By
```
SELECT Freight FROM Orders
ORDER BY Freight DESC
```
---
* WHERE
```
SELECT * FROM Customers
WHERE Country = 'Germany'
```
---
>[!NOTE]
> Vergleichsoperatoren
> (> größer als)
> (>= größer gleich)
> (< kleiner gleich)
> (<= kleiner gleich)
> (= exakte Suche)
> (!= ungleich)
> (<> ungleich)
---
* WHERE + AND/BETWEEN
```
SELECT * FROM Orders
WHERE Freight >= 100 AND Freight <= 500

SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 500
```
---
* WHERE + OR/IN
```
SELECT * FROM Customers
WHERE Country = 'France' OR Country = 'Brazil' OR Country = 'Austria'

SELECT * FROM Customers
WHERE Country IN('France', 'Brazil', 'Austria')
```
---
* Datentypen
  * Charakter und String Datentypen
  * Numerische Datentypen
  * Datum/Zeit Datentypen
---
* WHERE + LIKE
```
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE 'B%'
```
---
* CASE
```
SELECT UnitsInStock,
CASE
	WHEN UnitsInStock < 10 THEN 'Nachbestellen!'
	WHEN UnitsInStock >= 10 THEN 'Passt.'
END as Pruefung
FROM Products
```
---

### Tag 2 Inhalt:
---
* JOINS
```
SELECT * FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID

-- Right Join
SELECT * FROM Orders
RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID

-- CROSS JOIN: (A x B)
SELECT * FROM Orders CROSS JOIN Customers

-- Self Join:
SELECT E1.EmployeeID, E1.LastName as Vorgesetzter, E2.EmployeeID, E2.LastName as Angestellter
FROM Employees as E1
RIGHT JOIN Employeees as E2 ON E1.EmployeeID = E2.ReportsTo
```
---
* CREATE
```
CREATE TABLE Person 
(
	PersonID int identity(1, 1) PRIMARY KEY,
	Vorname varchar(30),
	Nachname varchar(30)
)
```
---
* INSERT
```
INSERT INTO Person (Vorname, Nachname)
VALUES ('Felix', 'Braun')
```
---
* DELETE
```
DELETE FROM Person
WHERE PersonID = 4
```
---
* UPDATE
```
UPDATE Person
SET PersonID = 4
WHERE PersonID = 5
```
---
* ALTER
```
-- Spalte hinzufügen
ALTER TABLE Person
ADD Testdaten INT

-- Spalte löschen
ALTER TABLE Person
DROP COLUMN TestDaten
```
--- 
* UNION
```
SELECT 100 as Zahlen, 'Hallo' as Wörter
UNION
SELECT 5, 'Tschüss'
```
