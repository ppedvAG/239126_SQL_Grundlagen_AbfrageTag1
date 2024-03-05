-- einzeiliger Kommentar
-- Kommentar

/*
	Er�ffnet Kommentarblock
	geht �ber mehrere Zeilen
	...
	...
*/

-- Datenbank ansprechen per USE Befehl oder per Dropdown Men� (Nennt man GUI = Graphical User Interface)
USE Northwind

SELECT * FROM Customers

-- Nur CompanyName, Country
SELECT CompanyName, Country FROM Customers

-- SQL ist nicht case Sensitive => Spaltenname umbennen mit einem Alias
sElEcT cOmPanYNaMe as Unternehmen, cOuNtRy as Land



	FrOm cUsTomErS

-- "Custom" Ausgaben in SQL
SELECT 100 as Hundert

/*
	Hundert		Fuenf		Hallo
	-----------------------------
	100			5			Hallo
*/
SELECT 100 as Hundert, 5 as Fuenf, 'Hallo' as Hallo

SELECT UnitPrice, Quantity, (UnitPrice * Quantity) as Berechnung
FROM [Order Details]

--------------------------------------------------------------
-- DISTINCT - "filtert" Duplikate Ergebniszeilen
SELECT Country FROM Customers

-- L�sung: DISTINCT benutzen um Duplikate herauszufiltern
SELECT DISTINCT Country FROM Customers

SELECT DISTINCT Country, City FROM Customers

--------------------------------------------------------------
-- Order By - Sortiert Ergebnismengen

SELECT Freight FROM Orders
ORDER BY Freight DESC
-- ASC = ASCENDING = aufsteigend (standard)
-- DESC = DESCENDING = absteigend

SELECT CompanyName, Country as 'Z-A', City as 'A-Z' FROM Customers
ORDER BY Country DESC, City ASC

-- TOP X - werden nur die "obersten" X Zeilen ausgegben

-- Die 20 Bestellungen haben, mit den gr��ten Frachtkosten
SELECT TOP 20 * FROM Orders
ORDER BY Freight DESC

-------------------------------------------------------
-- UNION f�hrt mehrere Ergebnistabellen vertikal in eine Tabelle zusammen
-- UNION macht automatisch ein DISTINCT mit
-- Spaltenanzahl muss gleich sein, Datentypen m�ssen KOMPATIBEL sein!

SELECT * FROM Customers
UNION
SELECT * FROM Customers

-- mit UNION ALL wird kein DISTINCT AUSGEF�HRT

SELECT * FROM Customers
UNION ALL
SELECT * FROM Customers

-- Custom ausgaben
SELECT 100 as Zahlen, 'Hallo' as W�rter
UNION
SELECT 5, 'Tsch�ss'

-- Test
SELECT 100, 'Hallo'
UNION
SELECT 'Tsch�ss', 5