USE Northwind

-- Wenn ein Fall gefunden wird dann passiert xyz, wenn nicht dann ist das Ergebnis NULL
SELECT UnitsInStock,
CASE
	WHEN UnitsInStock < 10 THEN 'Nachbestellen!'
	WHEN UnitsInStock >= 10 THEN 'Passt.'
END as Pruefung
FROM Products

-- Alternativ mit ELSE einen "Notausgang" definieren:
SELECT UnitsInStock,
CASE
	WHEN UnitsInStock < 10 THEN 'Nachbestellen!'
	WHEN UnitsInStock >= 10 THEN 'Passt.'
	ELSE 'Fehler!'
END as Pruefung
FROM Products