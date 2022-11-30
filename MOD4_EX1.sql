

--SELECT VendorName, CourseName, StartDate, NumberDelegates FROM dbo.VendorCourseDateDelegateCount


SELECT * FROM(
SELECT VendorName, StartDate, NumberDelegates FROM dbo.VendorCourseDateDelegateCount) AS BaseData
PIVOT 
(SUM(NumberDelegates) FOR VendorName IN (QA, Microsoft, Oracle))
AS Pivotted