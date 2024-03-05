USE Northwind


CREATE TABLE Person 
(
	PersonID int identity(1, 1) PRIMARY KEY,
	Vorname varchar(30),
	Nachname varchar(30)
)

SELECT * FROM Person

-- Spalten bef�llen
INSERT INTO Person (Vorname, Nachname)
VALUES ('Felix', 'Braun')

-- Automatisch alle Spalten bef�llen
INSERT INTO Person
VALUES ('Klaus', 'Heinemann')

-- Custom Eingabe
INSERT INTO Person
SELECT 'Timo', 'Erhart'

-- L�schen eines Datensatzes
DELETE FROM Person
WHERE PersonID = 4

SELECT * FROM Person
WHERE PersonID = 4

-- UPDATE
UPDATE Person
SET PersonID = 4
WHERE PersonID = 5

-- Eine Neue Spalte f�r Person hinzuf�gen
ALTER TABLE Person
ADD TestDaten INT

SELECT * FROM Person

-- Spalte wieder l�schen
ALTER TABLE Person
DROP COLUMN TestDaten

-- �bung
/*
	Erstelle mir eine Tabelle:
	Die soll die Spalten:
		- PersonenID int Prim�rschl�ssel, aufz�hlen ab 1 und in 1er schritten
		- Vornamen varchar(30)
		- nachnamen varchar(30)
		- Geburtsdatum date 'YYYYMMDD'
		- Postleitzahl int

	2x Datens�tze in diese Tabelle einf�gen (beliebige infos)

	- Spalte Postleitzahl l�schen
	- Spalte Postleitzahl hinzuf�gen als varchar(30) datentyp

*/