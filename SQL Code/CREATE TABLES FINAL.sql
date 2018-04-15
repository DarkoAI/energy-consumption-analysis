
CREATE TABLE GOVERNMENT (
TypeCode			Int				NOT NULL,
GovType				Varchar(50)		NOT NULL Unique,
CONSTRAINT TypeCodePK Primary Key (TypeCode),
);

CREATE TABLE COUNTRY (
CountryName			Varchar(50)		NOT NULL,
CountryCode			Char(2)			NOT NULL Unique,
Capital				Varchar(50)		NOT NULL,
Region				Char(25)		NOT NULL,
CountryPopulation	Numeric(20,0)	NOT NULL,
Climate				Varchar(25)			NULL,
MwH_Yr				Numeric(20,0)			NOT NULL,
Hofstede			Int					 NULL,
TypeCode			Int				NOT NULL,
CONSTRAINT CountryNamePK Primary Key (CountryName),
CONSTRAINT TypeCodeFK Foreign Key (TypeCode) REFERENCES GOVERNMENT(TypeCode)
);



CREATE TABLE HEALTH (
HealthIndex			Decimal(5,3)		NOT NULL,
CountryName			Varchar(50)			NOT NULL,
AvgLifeExp			Decimal(5,1)		NOT NULL,
InfantDeaths		Decimal(5,4)		NOT NULL,
CONSTRAINT HealtIndexPK Primary Key (HealthIndex),
CONSTRAINT CountryNameFK2 Foreign Key (CountryName) REFERENCES COUNTRY(CountryName)
);


CREATE TABLE PWR_GENERATION (
EnergyRank				Int				NOT NULL,
CountryName				Varchar(50)		NOT NULL,
FossilFuel				Float			 NULL,
NuclearPower			Float			 NULL,
WaterPower				Float			 NULL,
RenewableEnergy			Float			 NULL,
OtherEnergyResources	Float			 NULL,
CONSTRAINT EnergyRankPK Primary Key (EnergyRank),
CONSTRAINT CountryNameFK Foreign Key (CountryName) REFERENCES COUNTRY(CountryName)
);
