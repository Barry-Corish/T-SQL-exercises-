DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'

IF @vendor IS NULL
	BEGIN
	PRINT 'Vendor Cannot be NULL'
	RETURN
	END

IF NOT EXISTS(SELECT*FROM dbo.Vendor WHERE VendorName = @Vendor)
BEGIN
	PRINT 'Non-Existent Vendor Name'
	RETURN
	END

SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
	WHERE 
		VendorName = @Vendor
GO