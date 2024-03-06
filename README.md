# SQL Grundlage Abfragesprache Tag 1:

### Tag 1 Inhalt:
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


