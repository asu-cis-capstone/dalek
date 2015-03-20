-- TABLE STRUCTURE FOR TABLE [DBO].[TABLES]
CREATE TABLE IF NOT EXISTS [dbo].[Tables] (
	[id]		INT				IDENTITY(1, 1) NOT NULL,
	[number]	INT				NOT NULL,
	[status]	INT				NOT NULL,
	[tablename]	NVARCHAR (MAX)	NULL,
	CONSTRAINT [PK_dbo.Tables] PRIMARY KEY CLUSTERED([id] ASC)
)

-- TABLE STRUCTURE FOR TABLE [DBO].[TABLESLOG]
CREATE TABLE IF NOT EXISTS [dbo].[TablesLog] (
	[id]		INT			IDENTITY(1, 1) NOT NULL,
	[number]	INT			NOT NULL,
	[status]	INT			NOT NULL,
	[cycleid]	INT			NOT NULL,
	[timestamp]	DATETIME	NOT NULL,
	CONSTRAINT [PK_dbo.TablesLog] PRIMARY KEY CLUSTERED ([id] ASC)
}

-- INSERT ROWS INTO TABLE [DBO].[TABLES]
SET IDENTITY_INSERT [dbo].[Tables] ON
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (1, 11, 0, N'B11')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (2, 12, 0, N'B12')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (3, 13, 2, N'B13')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (4, 14, 3, N'B14')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (5, 15, 0, N'B15')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (6, 21, 0, N'B21')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (7, 22, 0, N'B22')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (8, 23, 0, N'B23')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (9, 24, 0, N'B24')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (10, 25, 1, N'B25')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (11, 31, 0, N'B31')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (12, 32, 0, N'B32')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (13, 33, 0, N'B33')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (14, 34, 0, N'B34')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (15, 35, 0, N'B35')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (16, 36, 0, N'B36')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (17, 41, 0, N'B41')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (18, 42, 2, N'B42')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (19, 43, 0, N'B43')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (20, 44, 0, N'B44')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (21, 45, 0, N'B45')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (22, 51, 0, N'B51')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (23, 52, 0, N'B52')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (24, 53, 0, N'B53')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (25, 54, 0, N'B54')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (26, 55, 0, N'B55')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (27, 56, 0, N'B56')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (28, 57, 0, N'B57')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (29, 61, 0, N'B61')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (30, 62, 1, N'B62')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (31, 63, 0, N'B63')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (32, 64, 0, N'B64')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (33, 65, 0, N'B65')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (34, 66, 0, N'B66')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (35, 67, 0, N'B67')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (36, 68, 1, N'B68')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (37, 71, 0, N'B71')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (38, 72, 0, N'B72')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (39, 73, 0, N'B73')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (40, 74, 0, N'B74')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (41, 75, 0, N'B75')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (42, 76, 0, N'B76')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (43, 77, 0, N'B77')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (44, 81, 1, N'B81')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (45, 82, 0, N'B82')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (46, 83, 0, N'B83')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (47, 84, 0, N'B84')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (48, 85, 0, N'B85')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (49, 90, 0, N'B90')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (50, 91, 0, N'B91')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (51, 92, 0, N'B92')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (52, 93, 0, N'B93')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (53, 94, 0, N'B94')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (54, 95, 1, N'B95')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (55, 96, 1, N'B96')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (56, 97, 1, N'B97')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (57, 98, 0, N'B98')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (58, 99, 3, N'B99')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (59, 101, 0, N'B101')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (60, 102, 0, N'B102')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (61, 103, 0, N'B103')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (62, 104, 0, N'B104')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (63, 105, 2, N'B105')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (64, 106, 0, N'B106')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (65, 201, 0, N'B201')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (66, 202, 0, N'B202')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (67, 203, 0, N'B203')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (68, 204, 0, N'B204')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (69, 205, 0, N'B205')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (70, 206, 0, N'B206')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (71, 207, 0, N'B207')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (72, 208, 1, N'B208')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (73, 209, 0, N'B209')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (74, 301, 1, N'B301')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (75, 302, 1, N'B302')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (76, 303, 1, N'B303')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (77, 304, 1, N'B304')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (78, 305, 1, N'B305')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (79, 306, 0, N'B306')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (80, 307, 0, N'B307')
INSERT INTO [dbo].[Tables] ([id], [number], [status], [tablename]) VALUES (81, 308, 0, N'B308')
SET IDENTITY_INSERT [dbo].[Tables] OFF



-- TRIGGER AN INSERT EVENT AFTER A STATUS HAS BEEN UPDATED IN [DBO].[TABLES]
CREATE TRIGGER INSERT_INTO_TABLESLOG
ON [DBO].[TABLES]
FOR UPDATED
AS

DECLARE

@number 	INT,
@status 	INT,
@cycleid 	INT,
@maxcycleid INT,
@timestamp	DATETIME

SELECT @number = i.number FROM INSERTED i;
SELECT @status = i.status FROM INSERTED i;
SELECT @maxcycleid = (SELECT max(cycleid) FROM TablesLog t1 WHERE t1.number = @number);
SELECT @cycleid = CASE 
					WHEN @maxcycleid IS NULL THEN 1
					WHEN @status = 0 THEN @maxcycleid + 1
					ELSE @maxcycleid END
SELECT @timestamp = GETDATE();

INSERT INTO TablesLog(number, status, cycleid, timestamp)
VALUES (@number, @status, @cycleid, @timestamp);

-- CREATE A VIEW TO DISPLAY DATA FOR EACH TABLE BY CYCLEID
CREATE VIEW Table_Reporting 
AS

WITH StatusTime AS (
SELECT a.number,
	   a.cycleid,
	   a.status,
	   Date = min(convert(date, a.timestamp)),
	   CONVERT(varchar, DATEADD(ms, (SUM(DATEDIFF(second, b.previoustimestamp, a.timestamp))) * 1000, 0), 108) AS [TimeInStatus]
	FROM TablesLog a
	CROSS APPLY
	(
		SELECT MAX(c.timestamp) AS [PreviousTimeStamp]
			FROM TablesLog c
			WHERE c.number=a.number
			AND status > 0
			AND c.timestamp < a.timestamp
	) b
GROUP BY a.number,
		 a.cycleid,
		 a.status )

SELECT number, Date, [0] AS Dirty, [1] AS [Open], [2] AS Sat
	FROM StatusTime
	PIVOT
	(
		MAX(TimeInStatus)
		FOR status IN ([0], [1], [2])
	) AS PivotTable
					   