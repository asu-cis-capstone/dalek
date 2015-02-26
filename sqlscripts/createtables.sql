/* *************************************************** 
DOCUMENT:		createtables.sql
LANGUAGE:		SQL
ENVIRONMENT:	MYSQL
SERVER NAME:	198.71.225.50
DATABASE NAME:	projectdalek
********************************************************/

-- CREATE THE RESTAURANT TABLE.
CREATE TABLE IF NOT EXISTS Restaurant (
	RestaurantID		NCHAR(3)		NOT NULL,
    LocationName		NVARCHAR(50)	NOT NULL,
    StreetAddress		NVARCHAR(50)	NOT NULL,
    City				NCHAR(50)		NOT NULL,
    State				NCHAR(2)		NOT NULL,
    ZipCode				NCHAR(5)		NOT NULL,
CONSTRAINT PK_Restaurant PRIMARY KEY (RestaurantID ASC));

-- CREATE THE STAFF TABLE.
CREATE TABLE IF NOT EXISTS Staff (
	StaffNo			INT				AUTO_INCREMENT NOT NULL,
	FirstName		NVARCHAR(50)	NOT NULL,
	LastName		NVARCHAR(50)	NULL,
	ServiceArea		NVARCHAR(50)	NULL,
	RestaurantID	NCHAR(3)		NOT NULL,
CONSTRAINT PK_Staff PRIMARY KEY (StaffNo ASC),
CONSTRAINT FK_Staff FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID));

-- CREATE THE TABLECOORDINATES TABLE.
CREATE TABLE IF NOT EXISTS TableCoordinates (
	TableNo			INT		NOT NULL,
	XCoord			INT		NOT NULL,
	YCoord			INT		NOT NULL,
CONSTRAINT PK_TableCoordinates PRIMARY KEY (TableNo ASC));

-- CREATE THE TABLEDATA TABLE.
CREATE TABLE IF NOT EXISTS TableData (
	ID				INT		AUTO_INCREMENT NOT NULL,
	TableNo			INT		NOT NULL,
	SectionNo		INT		NULL,
	FloorPlan		INT		NULL,
CONSTRAINT PK_TableData PRIMARY KEY (ID ASC),
CONSTRAINT FK_TableData FOREIGN KEY (TableNo) REFERENCES TableCoordinates(TableNo));

-- CREATE THE ACTIVETABLES TABLE.
CREATE TABLE IF NOT EXISTS ActiveTables (
	StatusID		INT			AUTO_INCREMENT NOT NULL,
	RestaurantID	NCHAR(3)	NOT NULL,
	TableNo			INT			NOT NULL,
	SectionNo		INT			NULL,
	TableStatus		INT			NOT NULL,
	Date			DATE		NOT NULL,
	Time			TIME		NOT NULL,
CONSTRAINT PK_ActiveTables PRIMARY KEY (StatusID ASC),
CONSTRAINT FK_ActiveTables FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID));

-- CREATE THE TABLEHISTORYLOG TABLE.
CREATE TABLE IF NOT EXISTS TableHistoryLog (
	LogID			INT			AUTO_INCREMENT NOT NULL,
	RestaurantID	NCHAR(3)	NOT NULL,
	TableNo			INT			NOT NULL,
	Date			DATE		NOT NULL,
	Available		TIME		NULL,
	Seated			TIME		NULL,
	Dirty			TIME		NULL,
	TotalTime		TIME		NULL,
CONSTRAINT PK_TableHistoryLog PRIMARY KEY (LogID ASC),
CONSTRAINT FK_TableHistoryLog FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID));