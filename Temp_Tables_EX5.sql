SELECT * FROM dbo.Course 
WHERE VendorID = 2

SELECT * INTO #MicrosoftLocal 
FROM dbo.Course WHERE VendorId=2 

SELECT * INTO ##MicrosoftGlobal 
FROM dbo.Course WHERE VendorId=2 

SELECT * FROM #MicrosoftLocal
SELECT * FROM ##MicrosoftGlobal