USE DB2017_C04
/*CREATE TABLE PRODUCT_STOF2000 (
	Varenummer	Int		NOT NULL,
	Varenavn	nvarchar(MAX)	NULL,
	Beskrivelse	nvarchar(MAX)	NULL,
	
	CONSTRAINT	VARENR_PK	PRIMARY KEY(Varenummer)		

);
*/
CREATE TABLE STOF(
	Varenummer Int	NOT NULL,
	StofType	nvarchar(MAX)	NULL,
	Farve		nvarchar(MAX)	NULL,
	Mønster		nvarchar(MAX)	NULL,
	PrisPrMeter	float		NULL,
	Mængde		float		NULL

	CONSTRAINT	VARENRSTOF_PK	PRIMARY KEY(Varenummer)
	CONSTRAINT	STOF_FK		FOREIGN KEY(Varenummer)
		REFERENCES PRODUCT_STOF2000(Varenummer)
				ON UPDATE CASCADE



);