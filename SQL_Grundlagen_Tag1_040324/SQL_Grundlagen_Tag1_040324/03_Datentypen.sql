USE Northwind

/*
	Datentypen in 3 große Gruppen:

	Charakter und String Datentypen:
	--------------------------------
	char(10) = 'Hallo     ' = 10 Byte Speicherplatz = 1 Byte = 8 Bit
	nchar(10) = Pro Zeichen jeweils 2 Byte => 20 Byte Speicherplatz => UTF-16

	varchar(10) = 'Hallo' = 5 Byte Speicherplatz 
	nvarchar(10) = Pro Zeichen jeweils 2 Byte => UTF-16

	Legacy: text => VARCHAR(MAX) => bis 2GB Speicherplatz
	varchar(8000) sonst maximum
	nvarchar(4000)

	Numerische Datentypen:
	----------------------
	tinyint = 8 Bit bis 255
	smallint = 16 Bit bis zu 32k
	int = 32 Bit groß bis zu 2,14 Mrd => Primary Key
	bigint = 64 Bit bis zu 9,2 Trillion

	(keine Boolschen Werte)
	bit = 1 oder 0 (true = 1, false = 0)

	decimal(x, y)= x Ziffern insgesamt haben, davon sollen y Nachkommastellen
	decimal(10, 2) = 10 Ziffern insgesamt haben, davon sollen 2 Nachkommastellen sein
	float
	money

	Datum/Zeit Datentypen:
	----------------------
	time = 00h 00m 00s
	date = YYYY/MM/DD
	datetime = date + time bis in Millisekunden => YYYY/MM/DD 00h:00m:00s:000ms
	datetime2 = bis Nanosekunden
	smalldatetime = präzise bis Sekunden => YYYY/MM/DD 00h:00m:00s
*/