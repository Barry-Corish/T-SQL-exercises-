DECLARE @StartDT datetime = GETDATE()
DECLARE @EndDT datetime 
DECLARE @Vendor VARCHAR(50)
PRINT @StartDT


DECLARE @X INT = 0
WHILE @X < 100
	BEGIN
		PRINT @X
		SET @X = @X + 1
	END
SET @EndDT = GETDATE()
SELECT @StartDT, @EndDT
GO

IF EXISTS (SELECT * FROM sysobjects WHERE Name = 'NewView')
	DROP VIEW dbo.NewView
GO

CREATE VIEW dbo.NewView AS
	SELECT * FROM dbo.Delegate
GO
