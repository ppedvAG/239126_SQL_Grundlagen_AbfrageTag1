USE Northwind


CREATE TABLE Person 
(
	PersonID int identity(1, 1) PRIMARY KEY,
	Vorname varchar(30),
	Nachname varchar(30)
)

SELECT * FROM Person

-- Spalten befüllen
INSERT INTO Person (Vorname, Nachname)
VALUES ('Felix', 'Braun')

-- Automatisch alle Spalten befüllen
INSERT INTO Person
VALUES ('Klaus', 'Heinemann')

-- Custom Eingabe
INSERT INTO Person
SELECT 'Timo', 'Erhart'

-- Löschen eines Datensatzes
DELETE FROM Person
WHERE PersonID = 4

SELECT * FROM Person
WHERE PersonID = 4

-- UPDATE
UPDATE Person
SET PersonID = 4
WHERE PersonID = 5

-- Eine Neue Spalte für Person hinzufügen
ALTER TABLE Person
ADD TestDaten INT

SELECT * FROM Person

-- Spalte wieder löschen
ALTER TABLE Person
DROP COLUMN TestDaten

-- Übung
/*
	Erstelle mir eine Tabelle:
	Die soll die Spalten:
		- PersonenID int Primärschlüssel, aufzählen ab 1 und in 1er schritten
		- Vornamen varchar(30)
		- nachnamen varchar(30)
		- Geburtsdatum date 'YYYYMMDD'
		- Postleitzahl int

	2x Datensätze in diese Tabelle einfügen (beliebige infos)

	- Spalte Postleitzahl löschen
	- Spalte Postleitzahl hinzufügen als varchar(30) datentyp

*/