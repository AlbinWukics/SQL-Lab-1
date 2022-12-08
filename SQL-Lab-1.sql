--CREATE DATABASE DbBokhandel
USE DbBokhandel

--CREATE TABLE F�rfattareTbl
--(
--	[ID] INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
--	[F�rnamn] NVARCHAR(100),
--	[Efternamn] NVARCHAR(100),
--	[F�delsedatum] DATE 
--)

--CREATE TABLE F�rfattareB�ckerTbl
--(
--	[ISBN13] NVARCHAR(17) FOREIGN KEY REFERENCES B�ckerTbl(ISBN13),
--	[F�rfattareID] INT FOREIGN KEY REFERENCES F�rfattareTbl(ID),
--	PRIMARY KEY([ISBN13],[F�rfattareID])
--)

--CREATE TABLE B�ckerTbl
--(
--	[ISBN13] NVARCHAR(17) PRIMARY KEY NOT NULL, 
--	[Titel] NVARCHAR(100),
--	[Spr�k] NVARCHAR(100),
--	[Pris] INT,
--	[Utgivningsdatum] DATE,
--	[BokformatID] INT FOREIGN KEY REFERENCES BokformatTbl(BokformatID),
--	[Antal sidor] INT,
--	[BokserieID] INT FOREIGN KEY REFERENCES BokserieTbl(ID)
--)

--CREATE TABLE BokserieTbl
--(
--	[ID] INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
--	[Namn] NVARCHAR (100)
--)

--CREATE TABLE F�rlagTbl
--(
--	[F�rlag] NVARCHAR(100) PRIMARY KEY NOT NULL,
--	[ISBN13] NVARCHAR(17) FOREIGN KEY REFERENCES B�ckerTbl(ISBN13)
--)

--CREATE TABLE BokformatTbl
--(
--	[BokformatID] INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
--	[Formatnamn] NVARCHAR(100)
--)

--CREATE TABLE ButikerTbl
--(
--	[ID] INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
--	[ButiksNamn] NVARCHAR(100),
--	[Adress] NVARCHAR(100),
--)

--CREATE TABLE LagerSaldoTbl
--(
--	[ButikID] INT FOREIGN KEY REFERENCES ButikerTbl(ID),
--	[ISBN13] NVARCHAR(17) FOREIGN KEY REFERENCES B�ckerTbl(ISBN13),
--	[Antal] INT,
--	PRIMARY KEY ([ButikID],[ISBN13])
--)

--CREATE TABLE Anst�lldaTbl
--(
--	[Anst�llningsID] INT PRIMARY KEY,
--	[F�rnamn] NVARCHAR(100),
--	[Efternamn] NVARCHAR(100),
--	[Personnummer] NVARCHAR(13),
--	[ButikID] INT FOREIGN KEY REFERENCES ButikerTbl(ID)
--)


--INSERT INTO ButikerTbl(Butiksnamn, Adress)VALUES('Hannas bokbutik','Bokgatan 96, 42830 K�llered')
--INSERT INTO ButikerTbl(Butiksnamn, Adress)VALUES('S�tila bokbutik','Zethelius V�g 3, 51169 S�tila')
--INSERT INTO ButikerTbl(Butiksnamn, Adress)VALUES('ICA Kvantum Sanneg�rden','Vintergatan 4, 41758 G�teborg')

--INSERT INTO Anst�lldaTbl(Anst�llningsID, F�rnamn, Efternamn, Personnummer, ButikID)VALUES('117', 'James', 'Bond', '00000000-0000', 1)
--INSERT INTO Anst�lldaTbl(Anst�llningsID, F�rnamn, Efternamn, Personnummer, ButikID)VALUES('111', 'Preston', 'Garvey', '22570211-0437', '2')
--INSERT INTO Anst�lldaTbl(Anst�llningsID, F�rnamn, Efternamn, Personnummer, ButikID)VALUES('120', 'Cassian', 'Andor', '19901212-1656', '3')

--INSERT INTO BokformatTbl(Formatnamn)VALUES('Bok')
--INSERT INTO BokformatTbl(Formatnamn)VALUES('Ljudbok')
--INSERT INTO BokformatTbl(Formatnamn)VALUES('E-bok')

--INSERT INTO BokserieTbl(Namn)VALUES
--('A Song of Ice and Fire'),
--('The Inheritance Cycle'),
--('The Kingkiller Chronicle')


--INSERT INTO F�rfattareTbl(F�rnamn, Efternamn, F�delsedatum) VALUES('George', 'Martin', '1948-09-20')
--INSERT INTO F�rfattareTbl(F�rnamn, Efternamn, F�delsedatum) VALUES('Patrick', 'Rothfuss', '1973-06-06')
--INSERT INTO F�rfattareTbl(F�rnamn, Efternamn, F�delsedatum) VALUES('J.R.R.', 'Tolkien ', '1948-09-20')
--INSERT INTO F�rfattareTbl(F�rnamn, Efternamn, F�delsedatum) VALUES('Christopher', 'Paolini', '1983-11-17')
--INSERT INTO F�rfattareTbl(F�rnamn, Efternamn, F�delsedatum) VALUES('Kjell Herman', 'Forsman', '1944-02-25')
--INSERT INTO F�rfattareTbl(F�rnamn, Efternamn, F�delsedatum) VALUES('Erich', 'Gamma', '1961-03-13')
--INSERT INTO F�rfattareTbl(F�rnamn, Efternamn, F�delsedatum) VALUES('Ralph', 'Johnson', '1955-10-07')
--INSERT INTO F�rfattareTbl(F�rnamn, Efternamn, F�delsedatum) VALUES('John', 'Vlissides', '1961-08-02')


--INSERT INTO F�rfattareB�ckerTbl(ISBN13, F�rfattareID)VALUES
--('9780553573404', 1),
--('9780553579901', 1),
--('9780553573428', 1),
--('9780553582024', 1),
--('9780553582017', 1),
--('9789178037117', 4),
--('9789178037100', 4),
--('9789178037087', 4),
--('9789178037094', 4),
--('9780575081406', 2),
--('9780575081437', 2),
--('9789180199414', 5),
--('9780201633610', 6),
--('9780201633610', 8),
--('9780201633610', 9)


--INSERT INTO B�ckerTbl(ISBN13, Titel, Spr�k, Pris, Utgivningsdatum, BokformatID, [Antal sidor], BokserieID) VALUES
--	('9780553573404', 'A Game of Thrones', 'Engelska', 98, '1997-08-01', 1, 864, 1),
--	('9780553579901', 'A Clash of Kings', 'Engelska', 98, '2000-09-01', 1, 1040, 1),
--	('9780553573428', 'A Storm of Swords', 'Engelska', 98, '2003-03-01', 1, 1216, 1),
--	('9780553582024', 'A Feast for Crows', 'Engelska', 98, '2006-09-01', 1, 1104, 1),
--	('9780553582017', 'A Dance with Dragons', 'Engelska', 155, '2013-10-01', 1, 1152, 1),
					  
--	('9789178037117', 'Eragon', 'Svenska', 172, '2020-06-15', 1, 523, 2),
--	('9789178037100', 'Den �ldste', 'Svenska', 177, '2020-06-15', 1, 686, 2),
--	('9789178037087', 'Brisingr', 'Svenska', 177, '2020-06-15', 1, 790, 2),
--	('9789178037094', 'Arvtagaren', 'Svenska', 177, '2020-06-15', 1, 899, 2 ),
					  
--	('9780575081406', 'Name of the Wind', 'Svenska', 140, '2008-06-12', 1, 672, 3),
--	('9780575081437', 'Wise Man�s Fear', 'Svenska', 145, '2012-03-06', 1, 1008, 3)
					  
--INSERT INTO B�ckerTbl(ISBN13, Titel, Spr�k, Pris, Utgivningsdatum, BokformatID) VALUES
--	('9789180199414', 'Den stora sm�llen', 'Svenska', 92, '2022-11-22', 2)

--INSERT INTO B�ckerTbl(ISBN13, Titel, Spr�k, Pris, Utgivningsdatum, BokformatID, [Antal sidor]) VALUES
--	('9780201633610', 'Design Patterns', 'Engelska', 406, '1994-10-31', 1, 416 )


--INSERT INTO LagerSaldoTbl(ButikID, ISBN13, Antal)VALUES
--(1 , '9780201633610', 4),
--(1 , '9780553573404', 73),
--(1 , '9780553573428', 5),
--(1 , '9780553579901', 7),
--(1 , '9780553582017', 21),
--(1 , '9780553582024', 14),
--(1 , '9780575081406', 1),
--(1 , '9780575081437', 2),
--(1 , '9789178037087', 9),
--(1 , '9789178037094', 3),
--(1 , '9789178037100', 23),
--(2 , '9789178037117', 123),
--(2 , '9789180199414', 23),
--(2 , '9780201633610', 14382),
--(2 , '9780553573404', 3),
--(2 , '9780553573428', 9),
--(2 , '9780553579901', 63001),
--(2 , '9780553582017', 6),
--(3 , '9780553582024', 10),
--(3 , '9780575081406', 13),
--(3 , '9780575081437', 59),
--(3 , '9789178037087', 101),
--(3 , '9789178037094', 169),
--(3 , '9789178037100', 420),
--(3 , '9789178037117', 99)


--CREATE TABLE F�rlagTbl(F�rlag, ISBN13)VALUES
--	('BANTAM', '9780553573404'),
--	('BANTAM', '9780553579901'),
--	('BANTAM', '9780553573428'),
--	('BANTAM', '9780553582024'),
--	('BANTAM', '9780553582017'),

--	('Bonnier Carlsen', '9780553582017'),
--	('Bonnier Carlsen', '9789178037100'),
--	('Bonnier Carlsen', '9789178037087'),
--	('Bonnier Carlsen', '9789178037094'),

--	('Orion Publishing Group', '9780575081406'),
--	('Orion Publishing Group', '9780575081437'),

--	('Lind Co F�rlag', '9789180199414'),

--	('Addison Wesley', '9780201633610')



--SELECT * FROM BokserieTbl
--SELECT * FROM BokformatTbl
--SELECT * FROM F�rfattareTbl

-- J. R. R. Tolkiens b�cker?


--CREATE VIEW TitlarPerF�rfattare AS
--SELECT
--	CONCAT(F�rfattareTbl.F�rnamn, ' ' , F�rfattareTbl.Efternamn) AS Namn,
--	CONCAT(DATEDIFF(YEAR, F�rfattareTbl.F�delsedatum, GETDATE()), ' �r') AS �lder,
--	CONCAT(COUNT(DISTINCT B�ckerTbl.Titel), ' st') AS [Antal titlar],
--	CONCAT(SUM(B�ckerTbl.Pris * LagerSaldoTbl.Antal), ' kr') AS [Totalt Lagerv�rde]
--FROM F�rfattareTbl
--	JOIN F�rfattareB�ckerTbl ON F�rfattareB�ckerTbl.F�rfattareID = F�rfattareTbl.ID
--	JOIN B�ckerTbl ON B�ckerTbl.ISBN13 = F�rfattareB�ckerTbl.ISBN13
--	LEFT JOIN LagerSaldoTbl ON LagerSaldoTbl.ISBN13 = B�ckerTbl.ISBN13
--GROUP BY 
--	CONCAT(F�rfattareTbl.F�rnamn, ' ' , F�rfattareTbl.Efternamn),
--	DATEDIFF(YEAR, F�rfattareTbl.F�delsedatum, GETDATE()) 
--ORDER BY
--	CONCAT(SUM(B�ckerTbl.Pris * LagerSaldoTbl.Antal), ' kr') DESC

SELECT * FROM TitlarPerF�rfattare
