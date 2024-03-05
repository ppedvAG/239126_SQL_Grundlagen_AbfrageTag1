USE Northwind

-- Die Customers Tabelle mit der Orders joinen
SELECT * FROM Customers
SELECT * FROM Orders

SELECT * FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID

SELECT OrderID, Orders.CustomerID, Customers.CustomerID FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID

-- Mit Where verknüpfen
-- Bestellungen die Herr King bearbeitet hat
-- Tabelle Orders & Employees
SELECT * FROM Orders
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
WHERE LastName = 'King'

-- 1. Alle Produkte (ProductNames in Products Tabelle) aus den Kategorien "Beverages"
-- oder "Produce" (CategoryName in Categories Tabelle)
-- Tabellen: Products - Categories
SELECT * FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID
WHERE CategoryName IN('Produce', 'Beverages')

-- Vorschau:
-- Customers - Orders - [Order Details] - Products
SELECT * FROM Customers as cus
JOIN Orders as os ON cus.CustomerID = os.CustomerID
JOIN [Order Details] as od ON od.OrderID = os.OrderID
JOIN Products as p ON p.ProductID = od.ProductID

-- 2. Alle Bestellungen (Orders) bei denen ein Produkt verkauft wurde, das nichtmehr
-- geführt wird (Discontinued = 1 => wird nicht mehr geführt)
-- Tabellen: Orders - Order Details - Products
-- Discontinued eine Spalte in Products ist
SELECT * FROM Products
JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
JOIN Orders ON Orders.OrderID = [Order Details].OrderID
WHERE Discontinued = 1

-------------------------
-- Outer JOINS

-- Right JOIN Z.189 & 502
SELECT * FROM Orders
RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID

-- CROSS JOIN: (A x B)
-- Orders: 830 Rows & Customers: 91 rows
SELECT * FROM Orders CROSS JOIN Customers

-- Self JOIN
SELECT E1.EmployeeID, E1.LastName as Vorgesetzer, E2.EmployeeID, E2.LastName as Angestellter
FROM Employees as E1
RIGHT JOIN Employees as E2 ON E1.EmployeeID = E2.ReportsTo