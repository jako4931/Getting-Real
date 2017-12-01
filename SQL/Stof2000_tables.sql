USE DB2017_CXX

CREATE TABLE PRODUCT_STOF2000 (
	Varenummer		Int		NOT NULL,
	Varenavn		nvarchar(MAX)	NOT NULL DEFAULT 'Ukendt',
	Beskrivelse		nvarchar(MAX)	NOT NULL DEFAULT 'Der findes ingen beskrivelse for denne vare.',
	PrisPrM			float			NULL,
	MængdeM			float			NOT NULL DEFAULT 0, 
	Stoftype		Int				NULL,
	Farve			Int				NULL, 
	Mønster			nvarchar(MAX)	NULL,
	CONSTRAINT		PRODUCT_STOF2000_PK		PRIMARY KEY(Varenummer),
	CONSTRAINT		PRODUCT_STOF2000_FK		FOREIGN KEY(Stoftype)
			REFERENCES		STOFTYPE(StofID)
			ON UPDATE CASCADE, 
	CONSTRAINT		PRODUCT_STOF2000_FK2	FOREIGN KEY(Farve)
			REFERENCES		FARVE(FarveID)
			ON UPDATE CASCADE
);

CREATE TABLE STOFTYPE (
	StofID		Int		NOT NULL IDENTITY(1, 1),
	StoftypeNavn		nvarchar(MAX)		NOT NULL DEFAULT 'Ukendt',
	CONSTRAINT		STOFTYPE_PK		PRIMARY KEY(StofID)
);

CREATE TABLE FARVE(
	FarveID		int 	NOT NULL IDENTITY(1, 1),
	Farvenavn	nvarchar(MAX)	NOT NULL DEFAULT 'Ukendt', 
	CONSTRAINT		FARVE_PK	PRIMARY KEY(FarveID)
);

CREATE TABLE MØNSTER(
	MønsterID		int		NOT NULL IDENTITY(1, 1),
	MønsterNavn		nvarchar(MAX)	NOT NULL DEFAULT 'Intet navn'
	CONSTRAINT		MØNSTER_PK		PRIMARY KEY(MønsterID)
);

