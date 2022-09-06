INSERT INTO dbo.ID ([Name], [Title])
	SELECT [Name], [Title] FROM dbo.[FY2011]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2012]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2013]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2014]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2015]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2016]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2017]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2018]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2019]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2020]
	UNION
	SELECT [Name], [Title] FROM dbo.[FY2021];




UPDATE [Salary].[dbo].[ID]
	SET [Name] = RTRIM([Name]); 
UPDATE [Salary].[dbo].[ID]
	SET [Title] = RTRIM([Title]); 
































DELETE FROM dbo.ID




DECLARE @y INTEGER;
SET @y = 2011;

WHILE @y <= 2021
BEGIN

UPDATE dbo.ID
SET dbo.ID.[@y]=dbo.['FY'+@y].[Salary]
FROM dbo.ID
INNER JOIN dbo.[FY2014]
ON dbo.ID.[Name]=dbo.[FY2014].[Name]
AND dbo.ID.[Title]=dbo.[FY2014].[Title];

END;

CONCAT('dbo.ID.', + @y)
